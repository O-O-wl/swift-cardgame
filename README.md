# CardGame 카드게임
---
객체에게서 데이터를 가져오는 것 보다는
**객체가 직접 데이터로 연산을 하게끔** 외부에서 입력을 넣어준 뒤 결과값을 반환 받게하였다.
객체의 데이터의 출력에 대해서는, `OutputView`가 **클로저의 형태로 로직을 넘겨**, 데이터를 공개하지 않고 출력을 할 수 있었다.

ex)
대소비교를 하는 것을 데이터를 가져오기 보다는 해당 인스턴스와 다른 인스턴스와의 비교를 내부에서 하고 비교연산의 결과만 반환하게 하였다.

---

### 실행 영상


![ezgif com-video-to-gif](https://user-images.githubusercontent.com/39197978/60882500-003e2900-a283-11e9-8ea0-ed439e56f6c6.gif)
## 흐름
1. `GameInputView`로 부터 사용자의 입력  **`mode`- 게임종류 , `entry` - 인원수**

2. `Setting(DTO)` 객체 생성 
3. `Game` 객체 생성 - `Setting`주입
    - 인원수만큼의 플레이어생성,



