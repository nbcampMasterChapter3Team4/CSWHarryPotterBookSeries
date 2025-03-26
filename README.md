# CSWHarryPotterBookSeries

<br>

### 📖 Using Library

라이브러리 | 사용 목적 | Management Tool
:---------:|:----------:|:---------:
SnapKit | UI Layout | SPM
Then | UI 선언 | SPM
RxSwift | 비동기적 데이터 흐름 작업 | SPM


필수 기능: Issues: [Lv1](https://github.com/cjs1399/Team-Sparta/issues/11), [Lv2](https://github.com/cjs1399/Team-Sparta/issues/12),  [Lv3](https://github.com/cjs1399/Team-Sparta/issues/13)

도전 기능: Issues: 

### 필수 기능
<details>
  <summary><b>Level1</b></summary>
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
  <summary><b>Level2</b></summary>
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
  <summary><b>Level3</b></summary>
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


### 도전 기능
