import '../model.dart';

List<Content> popularContentsSample = [
  Content(title: "<전과에 대한 고찰> - 2.전과란 어떻게 이루어질까?", boardName: "정보게시판", content: "[2.전과란 어떻게 이루어질까?]\n전과의 과정을 이야기해보고자 합니다. 전과는 신청 날짜가 1월로 고정",
  like: 22, comments: 15),
  Content(boardName: "CPA 준비", content: "명심해라\n넌 합격이다", like: 34, comments: 6),
  Content(title: "삼전 합격 떴냐?", boardName: "취업·진로", content: "떳다 ㅅㅅ", like: 37, comments: 18),
  Content(title: "<전과에 대한 고찰> - 1.전과란?", boardName: "정보게시판", content: "안녕하세요 전과다른남자입니다.\n저는 머나먼 과거에 전과를 한 이젠 사라져가는 화석입니다. 다름 아니라",
      like: 26, comments: 26),
];

List<Content> infoContentsSample = [
  Content(content: "<전과에 대한 고찰> - 4.전과를 위한 필수조건, 선수강", like: 5, comments: 18,
      date: DateTime.parse("2021-06-25 15:36:00")),
  Content(content: "<전과에 대한 고찰> - 2.전과란 어떻게 이루어질까?", like: 22, comments: 15,
      date: DateTime.parse("2021-06-23 22:03:00")),
];

List<Content> officialContentsSample = [
  Content(content: "정석에서 공시 공부하시는 분들 많나용?", like: 0, comments: 4,
      date: DateTime.parse("2021-06-28 19:02:00")),
  Content(content: "이번에 공시봤고", like: 0, comments: 6,
      date: DateTime.parse("2021-06-28 16:57:00")),
];

List<Content> cpaContentsSample = [
  Content(content: "세무9급 합격자인데 회계를 배운적이 없어요", like: 0, comments: 2,
      date: DateTime.parse("2021-06-28 03:06:00")),
  Content(content: "혹시 내일 cpa 고시반 시험 보는 사람?", like: 0, comments: 0,
      date: DateTime.parse("2021-06-27 19:13:00")),
];

List<Content> examContentsSample = [
  Content(content: "세무사 준비생을 위한 옵챗, 열품타 만들었어요", like: 0, comments: 1,
      date: DateTime.parse("2021-06-28 15:26:00")),
  Content(content: "감정평가사 2차 올패스 같이 들으실분 구합니다", like: 0, comments: 0,
      date: DateTime.parse("2021-06-25 21:34:00")),
];

List<Content> taxContentsSample = [
  Content(content: "우선 57회 세무사 시험에 합격한 것을 진심으로 축하드립니다.", like: 3, comments: 1,
      date: DateTime.parse("2021-03-09 20:07:00")),
];

List<Content> delegateContentsSample = [
  Content(content: "안녕하십니까 인하대학교 학우 여러분", like: 1, comments: 2,
      date: DateTime.parse("2021-05-29 18:13:00")),
];

List<Content> realTimeContentsSample = [
  Content(content: "2021.6.27. 후문 앞에서 급작스럽게 쓰러져 의식을 잃었던 여학우입니다. 가방을 메고 계시던 남학생 분이 119를 불러주신", like: 168, comments: 17,
      boardName: "자유게시판", title: "응급실 치료비 결제해주신 분을 찾습니다.", date: DateTime.parse("2021-06-28 21:58:00")),
  Content(content: "??: 4.4인데 성장 가능학가요>나도 몰라 니네 과를 우리가 우째알아\n??: 4.5인데 1등 가능할까요?>학점 많이", like: 109, comments: 30,
      boardName: "자유게시판", title: "<7.1 예상글>", date: DateTime.parse("2021-06-28 13:39:00")),
];
