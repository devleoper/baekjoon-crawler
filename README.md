# baekjoon-crawler

Baekjoon Online Judge의 데이터를 크롤링하는 레일즈 기반의 웹사이트.

### 개요

얼마전에 발견해서 문제 풀어보려는데, 문제가 너무 많아서 어느 문제가 적당한지 찾기도 힘들고 안 풀려있는 문제가 상당히 많았네요. 문제 푸는 사람들에게 동기부여를 해주고, 이것저것 제가 넣어보면 재미있겠다- 싶은 기능을 추가하는 매쉬업이에요.

### 로드맵 및 고민
- [ ] 문제 크롤링
  - [x] 문제 정보 모델 설계
  - [x] 문제 번호 및 시도/정답자 등 데이터 크롤링
  - [x] 크롤링한 정보를 오름차순/내림차순으로 정렬
  - [ ] 문제 태깅 모델 설계
    - (참조 모델을 만들 것인가? 그냥 column을 추가할까?)
  - [ ] 스페셜, 삭제된 문제, 미번역 문제 태깅

- [x] 대회 정보 크롤링
  - [x] 폴더 모델 설계
  - [x] 크롤링한 문제 정보와의 참조 모델 설계
  - [x] 대회 및 문제 데이터 크롤링

- [ ] 개인화 페이지 제작
  - [ ] 사용자 모델 설계
  - [ ] 초기 데이터 크롤러 제작
  - [ ] 문제풀이 정보 업데이트 크롤러 제작
  - [ ] 도전 과제/포인트/대회 진행율 표시
  - [ ] 소셜 연동?
    - [ ] 친구 기능?
    - [ ] ???

- [ ] 디자인
  - [ ] 때 빼고 광 내고

- [ ] 크롤링 작업 자동화
  - [ ] ???

- [ ] 서비스
  - [ ] ???
