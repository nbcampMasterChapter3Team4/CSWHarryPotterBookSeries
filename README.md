# CSWHarryPotterBookSeries

<br>

### 📖 Using Library

라이브러리 | 사용 목적 | Management Tool
:---------:|:----------:|:---------:
SnapKit | UI Layout | SPM
Then | UI 선언 | SPM
RxSwift | 비동기적 데이터 흐름 작업 | SPM


필수 기능: Issues: [Lv1](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/2), [Lv2](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/3), [Lv3](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/4), [Lv4](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/5), [Lv5](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/6), [Lv6](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/7)

도전 기능: Issues: [Lv7](https://github.com/nbcampMasterChapter3Team4/CSWHarryPotterBookSeries/issues/7)

### 필수 기능
<details>
  <summary><b>Level 1</b></summary>
  <div markdown="1">
    <ul>
        <img width="100" src="https://github.com/user-attachments/assets/2fd59a87-e17b-4cf4-aa72-124c3b673b56" />
      <li>UILabel을 사용해서 책 제목을 표시하는 UILabel을 구현합니다.</li>
      <li>data.json파일에 있는 데이터 가져오기</li>
      <li>data.json에 있는 시리즈 전권에 대한 데이터 중 한 권 데이터를 UI에 표시합니다.</li>
      <li>전체 시리즈(총 7권) 중에 한 권의 데이터를 UI로 표시합니다.예를 들어 1권(시리즈 첫번째)인 경우 1, 3권(시리즈 세번째)인 경우 3을 표시합니다. </li>
      <li>Json 데이터에서 해리포터 시리즈 첫번째 제목인 Harry Potter and the Philosopher’s Stone 을 표시합니다.</li>
      <li>책 제목 밑에 시리즈 순서를 표시합니다. </li>
      <li>이후 도전 구현으로 해리포터 시리즈 7권의 책에 대해서 모두 확인할 수 있도록 구현합니다.</li>
      <li>지금 필수 구현에서는 하나의 숫자만 표시합니다.</li>
      <li>superView와 safeArea를 고려하여 제약 조건을 설정합니다.</li>
      <li>책 제목: leading, trailing = superView 로 부터 20 떨어지도록 세팅, top = safeArea 로 부터 10씩 떨어지도록 세팅</li>
      <li>시리즈 순서: leading, trailing = superView 로 부터 20 이상 떨어지도록 세팅, top = 책 제목으로부터 16 떨어지도록 세팅</li>
    </ul>
  </div>
</details>
<details>
  <summary><b>Level 2</b></summary>
  <div markdown="1">
    <ul>
      <img width="100" src="https://github.com/user-attachments/assets/625bafba-6053-4e97-a19d-c45ee0d113c2" />
      <li>책 정보 영역을UIStackView 를 최대한 사용해 이미지와 텍스트를 사진과 같이 구성해보세요.</li>
      <li>책 정보 영역은 이 영역을 의미합니다.</li>
      <img width="150" src="https://github.com/user-attachments/assets/103a6155-a68b-4db3-a638-17af4bd26e2b" />
      <li>DataService.loadBooks()를 통해 Json 데이터를 가지고 오기 실패한 경우 Alert 창으로 에러의 원인을 사용자에게 알립니다.</li>
      <li>책 표지 이미지 속성 width = 100, height : width 비율은 1:1.5, contentMode는 어떤걸로 하면 좋을지 고민해보세요.</li>
      <li>책 제목 속성 Font = 시스템 볼드체, 사이즈 20, 색상 black</li>
      <li>저자 속성 타이틀(*Author*) 속성, Font = 시스템 볼드체, 사이즈 16, 색상 black, 저자(*J. K. Rowling*) 속성, Font = 사이즈 18, 색상 darkGray</li>
      <li>출간일 속성 타이틀(*Released*) 속성, Font = 시스템 볼드체, 사이즈 14, 색상 black, 출간일(June 26, 1997) 속성, Font = 사이즈 14, 색상 gray, `1998-07-02` 형태로 되어있는 Json 데이터를 변형하여 `June 26, 1997` 형태로 표시</li>
      <li>페이지 속성 타이틀(Pages) 속성, Font = 시스템 볼드체, 사이즈 14, 색상 black, 페이지 수(223) 속성, Font = 사이즈 14, 색상 gray.</li>
      <li>저자, 출간일, 페이지 수 속성 타이틀(Author)과 저자(J. K. Rowling) 사이 간격 8, 타이틀(Released)과 출간일(June 26, 1997) 사이 간격 8, 타이틀(Pages)과 페이지 수(*223*) 사이 간격 8</li>
      <li>AutoLayout  leading, trailing = safeArea에서 5만큼씩 떨어지도록 세팅, 책 정보 영역이 시리즈 순서 영역 하단에 위치, 시리즈 순서는 하기의 사진을 의미합니다. 이 외의 다른 부분은 자유롭게 구현합니다.</li>
      <img width="65"src="https://github.com/user-attachments/assets/0fd20e2b-c99e-4216-ac7e-4f19e2d8a96f" />
    </ul>
  </div>
</details>

<details>
  <summary><b>Level 3</b></summary>
  <div markdown="1">
    <ul>
      <img width="100" src="https://github.com/user-attachments/assets/59f46511-30a1-460f-88b6-04fafb51e422" />
      <li>UIStackView 와 UILabel을 사용해서 Dedication과 Summary 를 우외 같이 구성해보세요.</li>
      <li>Dedication과 Summary 영역은 이 부분을 의미합니다.</li>
      <img width="150" src="https://github.com/user-attachments/assets/2e0150f3-a77f-41c8-8fa7-2feb7fa32fff" />
      <li>Dedication 속성: 타이틀(Dedication) 속성, Font = 시스템 볼드체, 사이즈 18, 색상 black, 헌정사 내용 속성 Font = 사이즈 14, 색상 darkGray</li>
      <li>Summary 속성 타이틀(Summary) 속성 Font = 시스템 볼드체, 사이즈 18, 색상 black, 요약 속성, Font = 사이즈 14, 색상 darkGray</li>
      <li>Autolayout: Dedication 영역 top = 책 정보 영역과 24 떨어져 있도록 세팅 leading, trailing = superView와 20씩 떨어지도록 세팅 타이틀(Dedication)과 헌정사(내용) 사이 간격 8</li>
      <li>Summary 영역 top = Dedication 영역과 24만큼 떨어져 있도록 세팅 leading, trailing = superView와 20씩 떨어지도록 세팅, 타이틀(Summary)과 요약(내용) 사이 간격 8</li>
    </ul>
  </div>
</details>

<details>
  <summary><b>Level 4</b></summary>
  <div markdown="1">
<aside>
🧑🏻‍💻 `UIScrollView` 를 추가하여 스크롤할 수 있도록 구현한 후 목차(Chapters)를 왼쪽과 같이 구성해보세요.

- **스크롤 속성**
    - 책 제목과 시리즈 순서는 화면 상단에 고정
        - ‘책 제목과 시리즈 순서’는 이 부분을 의미합니다.
            

![Image](https://github.com/user-attachments/assets/030686bf-8439-4395-a53f-b527703054e3)
            
   - 책 정보(책 표지, 책 제목, 저자, 출간일, 페이지수) 영역부터 목차(Chapters)까지 스크롤 가능하도록 구현
   - 스크롤 바가 보이지 않도록 구현
- 목차 속성
    - `UIScrollView` 안에 `UIStackView`를 추가하고 해당 `UIStackView`안에`UILabel` 추가하여 구현
        - 전체적인 포함 관계:
        `UIScrollView` 안에 `UIStackView` 안에 `UILabel`들어 있는 구조
    - 각 챕터 사이 간격은 8
    - 타이틀(*Chapters*) 속성
        - Font = 시스템 볼드체, 사이즈 18, 색상 black
    - 목차 속성
        - Font = 사이즈 14, 색상 darkGray
- **Autolayout**
    - 목차 영역의 `top` = Summary 영역과 24만큼 떨어져 있도록 세팅
    - `leading`, `trailing` = superView와 20씩 떨어지도록 세팅
    - 타이틀(*Chapters*)과 첫번째 챕터 사이 간격 8
</aside>
  </div>
</details>

<details>
  <summary><b>Level 5</b></summary>
  <div markdown="1">
<aside>
🧑🏻‍💻 Summary 접기/더보기 기능을 구현해보세요.

- 글자수가 450자 이상인 경우 `…` 말줄임표 표시 및 `더보기` 버튼 표시
    - 참고로, 2권(시리즈 두번째)의 요약 내용은 글자수가 450자 미만이므로 더보기 버튼이 표시되지 않아야 합니다.
- `더보기` 버튼을 누르면 요약 텍스트 전체가 표시되고 `더보기` 버튼은 `접기` 버튼으로 변경
- 더보기/접기 상태를 저장해 앱을 종료했다가 다시 실행했을 때에도 마지막 상태를 기억하여 표시
    - `더보기` 버튼을 눌러 Summary를 펼친 상태로 앱을 종료했다면, 앱을 다시 실행했을 때 펼쳐진 상태로 표시되어 있습니다.
    반대로 `접기`버튼을 눌러 접은 상태로 종료했다면 앱 종료 후 다시 실행했을 때 접은 상태로 표시되어 있습니다.
</aside>
  </div>
</details>

<details>
  <summary><b>Level 6</b></summary>
  <div markdown="1">
<aside>
🧑🏻‍💻 시리즈 전체(7권) 순서 중 원하는 권수의 책 정보를 볼 수 있도록 왼쪽과 같이 구현해보세요.

- 전체 데이터는 `data.json`에 있으며 시리즈 순서대로 데이터가 제공됩니다.
- 시리즈 순서 버튼을 누르면 아래 부분의 데이터가 업데이트 되어야 합니다.
    - 화면 상단에 있는 책 제목도 함께 변경
        
        ![Image](https://github.com/user-attachments/assets/07dd6b89-92c0-47ca-bfbd-6117de4cff18)
        
    - 책 정보 영역: 책표지 이미지, 책제목, 저자, 출간일, 페이지수
        

        ![Image](https://github.com/user-attachments/assets/b1f66b02-0551-426c-86d7-4f60712de4af)

        
    - 헌정사(Dedication)
        

        ![Image](https://github.com/user-attachments/assets/4c971356-d10f-4e6b-b307-1208fe9bed0c)

        
    - 요약(Summary)
        

        ![Image](https://github.com/user-attachments/assets/de1f7954-12cb-4eac-bc96-ffaede620a24)

        
    - 목차(Chapters)
        

        ![Image](https://github.com/user-attachments/assets/49cad509-f1b2-4701-9d97-ea87633482f2)

        
- level 5에서 시리즈 권별로 더보기/접기 상태를 저장하는 기능을 잘 구현했다면, 각 시리즈 권별 마지막 더보기/접기 상태를 기억하고 있어야 합니다.
    - ‘시리즈 순서’는 이 view를 의미합니다.

        ![Image](https://github.com/user-attachments/assets/e7ae78a5-05e7-44c1-bae9-b00fea479c84)

</aside>

  </div>
</details>

### 도전 기능

<details>
  <summary><b>Level 7</b></summary>
  <div markdown="1">
<aside>
🧑🏻‍💻 iOS 16.0과 호환 가능한 iPhone 모델(SE 2세대, 16 Pro Max 등)의 다양한 디바이스 지원과 Portrait 모드/ Landscape 모드를 대응하여 왼쪽과 같이 구현해보세요.

- iOS 16.0 호환 모델 확인: [https://support.apple.com/ko-kr/guide/iphone/iphe3fa5df43/16.0/ios/16.0](https://support.apple.com/ko-kr/guide/iphone/iphe3fa5df43/18.0/ios/18.0)
- iOS 16 이상 모든 버전을 지원할 수 있도록 구현
- Portrait 모드와 Landscape 모드 대응
- 콘텐츠가 노치나 다이나믹 아일랜드 영역에 가려지지 않도록 구현해보세요.
- Autolayout이 제대로 구현되어있지 않다면 콘솔창에 Autolayout 관련 경고 메시지가 출력됩니다. 디바이스 방향을 바꾸더라도 (Portrait 모드 ↔ Landscape 모드) 콘솔창에 Autolayout 관련 경고 메시지가 뜨지 않도록 구현해보세요.
</aside>
  </div>
</details>
