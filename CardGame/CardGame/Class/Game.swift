//
//  Game.swift
//  CardGame
//
//  Created by 이동영 on 29/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Game {
    var entry: PlayerEntry
    let dealer: MyDealer = MyDealer()
    let setting: Setting
    
    var isContinue: Bool {
        let needs = setting.mode.numOfCard*(setting.personnel.numOfPlayer+1)
        return self.dealer.canContinue(needs: needs)
    }
    
    init(setting: Setting?) throws {
        guard let setting = setting else {
            throw GameException.initFailure
        }
        self.setting = setting
        self.entry = PlayerEntry(num: setting.personnel.numOfPlayer, dealer: self.dealer)
    }
    
    func start() throws {
        entry.reset()
        try entry.draw(numOfCard: setting.mode.numOfCard) {
            entry.print(logic: OutputView.outputGame(_:_:))
        }
        let winner = entry.win()
        winner.print(logic: OutputView.outputWinner)
    }
    
    
}
