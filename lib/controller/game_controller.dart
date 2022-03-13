import 'dart:io';
import 'package:get/get.dart';

// 게임에 관련된 클래스
class GameController extends GetxController {
  int gameTime = 20; // 게임시간
  bool isGameStart = false; // 게임이 시작했는지 알려주는 bool 값
  var time = 0.obs;

  List<String> nickInfo = ["", "", "", "", "", ""]; // Nickname 정보
  List<bool> imageInfo = [false, false, false, false, false, false]; // Image를 위한 boolean타입
  int userCount = 0; // 총 인원수

  bool isConnect = false; // 소켓 연결 되었는지 알려주는 bool 값
  late ServerSocket serverSocket;

  // 추후 모델로 가지고 있어도 좋을 것 같음.
  List<String> word =
  [ '안경','와이파이','usb','쿠키','배구','잠옷','다리','케이크','초콜릿','폭탄','스위스','약과','떡볶이','치즈','멕시코','매미','메뚜기', '모기','도라에몽','호랑이',
    '치타','사자','곰','사슴','책','노트북','컴퓨터','사과','딸기','체리','연필','지우개','CD','피아노','첼로','리코더','드럼','핸드폰', '가위','경복궁',
    '바다', '정수기','뱀','탄산수','화장지','슬리퍼','피자','태양','영수증','아이스크림','카메라','동공','인형','귤','여름','겨울','봄','가을','단추', '카카오톡',
    '플룻','동전','지게','장미','단풍','등산','침대','달','크리스마스','양치','칫솔','치약','설거지','정원','망치','태평양','갯벌','바지락','무릎','지갑',
    '감사','자동차','꽃','형광등','머리끈','매니큐어','머리카락','저수지','하늘','별','지구','코끼리','코뿔소','벨기에','한동대학교','코난','농구','야구','핸드볼','낫',
    '책상','호두과자','고속도로','호떡','붕어빵','곡괭이','전등','러시아','이탈리아','터키','축구','해수욕장','비행기','기차','창문','삽','벼','괭이','고양이','도끼',
    '강아지','쟁기','배','멍에','소','쇠스랑','가마','기와','공','수영','불고기','햄버거','피자','치킨','맥북','마우스','키보드','나무','물고기','바람',
    '심층수','화산', '폭포','바위','라면','의자','tv','라디오','에어컨','히터','계곡','수제비','결혼','여행','마카롱','웹툰','동상','찜닭','김밥','나사',
    '엘리베이터','거울','양말'
  ]; // 총 163개

  void setUser(String nick)
  {
    nickInfo[userCount] = nick;
    imageInfo[userCount++] = true;
    update();
  }

}