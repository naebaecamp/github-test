import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sub3.dart';

int b = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Builder(builder: (context) {
        DefaultTabController.of(context)?.addListener(() {
          setState(() {});
        });

        return Scaffold(
          body: Stack(
            children: [
              TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                  FourTab(),
                  FiveTab(),
                  SixTab(),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);
  @override
  State<FirstTab> createState() => _FirstTab();
}

// 첫번째 페이지
class _FirstTab extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> userList = [
      {"userName": "박준수", "url": "http://wagzack.synology.me/js_trans.png"},
      {"userName": "박용석", "url": "http://wagzack.synology.me/ys_trans.png"},
      {"userName": "남경화", "url": "http://wagzack.synology.me/char_trans.png"},
      {"userName": "박준범", "url": "http://wagzack.synology.me/jb_trans.png"},
      {"userName": "이상훈", "url": "http://wagzack.synology.me/sh_trans.png"},
    ];
    return Container(
      color: Color(0xff5f9234),
      child: SafeArea(
        child: Column(
          children: [
            Text(
              "9조 안경개발자들",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
                  "5명 모두가 안경을쓰고있는 안경개발자들의 팀원들을 소개합니다!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(border: Border.all()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 60,
                left: 60,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        switch (b) {
                          case 0:
                            b = 4;
                            break;
                          case 1:
                            b = 0;
                            break;
                          case 2:
                            b = 1;
                            break;
                          case 3:
                            b = 2;
                            break;
                          case 4:
                            b = 3;
                            break;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          DefaultTabController.of(context).animateTo(b + 1);
                        },
                        child: Image.network(
                          userList[b]['url'],
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Text(
                        userList[b]['userName'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        switch (b) {
                          case 0:
                            b = 1;
                            break;
                          case 1:
                            b = 2;
                            break;
                          case 2:
                            b = 3;
                            break;
                          case 3:
                            b = 4;
                            break;
                          case 4:
                            b = 0;
                            break;
                        }
                        print("b = $b 입니다.");
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              color: Colors.blue[500],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            DefaultTabController.of(context).animateTo(0);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "-프로필 소개-",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue[300], shape: BoxShape.circle),
                    child: Image.network(
                      "http://wagzack.synology.me/js_trans.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "- 기본 정보 -",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "이름 ㅣ 박준수",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "성별 ㅣ 남자    ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "MBTI ㅣ INFP     ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black54,
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "- 상세 정보 -",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text:
                                  "소개 ㅣ대학생활때 공부해본 코딩에 관심을 가지고있다가 기회가 되어 개발자로서 커리어 전환하기 위해 스파르타에 합류했습니다.",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text:
                                  "스타일 ㅣ소심함이 많아 거의 하자는대로 하지만 답답한건 못참고 나설때가 있음.\n"
                                  "협업시 시키는 일은 확실하게 끝내려고함.",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text: "장점 ㅣ 혼자 잘 놀음.\n성격이 둥글둥글해서 친하게 지내기 편함.",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text: "단점 ㅣ INFP",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text: "좋아하는 것 ㅣ 게임",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text: "싫어하는 것 ㅣ 추운 환경",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text: "블로그 ㅣ https://velog.io/@subak ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[50],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => DefaultTabController.of(context).animateTo(0),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 11.0),
                    child: Column(
                      children: [
                        Text(
                          '  박용석',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Image.network(
                          'http://wagzack.synology.me/ys_trans.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  '기본 정보',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '1.이름   ㅣ 박용석',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '2.직급   ㅣ 팀원',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '3.성별   ㅣ 남자',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '4.MBTI ㅣ ISFJ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '5.좋아하는 것 ㅣ 동물, 운동, 게임',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '6.싫어하는 것 ㅣ 벌레',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 2.0,
                width: 360.0,
                color: Colors.black,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              ExpansionTile(
                title: Text(
                  '상세 정보',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Divider(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Text(
                              '1.소개 ㅣ 좀 더 체계적으로 실무경험을 쌓고 취업에 도움을 얻기 위해서 스파르타 코딩클럽에 참여하게 되었습니다. 다양한 사람들과 프로젝트를 경험하면서 좋은 결과로 이어졌으면 좋겠습니다. 이제 막 본 캠프가 시작 되었는데 11월 캠프 끝나고 취뽀까지 모두 화이팅입니다.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Text(
                              '2.스타일 ㅣ 전 나선다거나 강하게 제 의견을 내는 스타일이 아니라서 보통 흘러가는대로 지켜보는 성격인 것 같습니다. 성격이 내성적인 저를 위해서라도 더 많이 의사소통을 하고 의견을 낼 필요가 있다고 느끼는 것 같습니다.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              //overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 2.0,
                width: 360.0,
                color: Colors.black,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              ExpansionTile(
                title: Text(
                  '연락처',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '1.이메일 ㅣ rotqjfrkffo@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '2.블로그 ㅣ https://velog.io/@ys4897',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 2.0,
                width: 360,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 5번째 페이지
class FiveTab extends StatelessWidget {
  const FiveTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text(
            "박준범",
            style: TextStyle(fontSize: 20),
          ), // Text
        ), // AppBar
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(
                      "http://wagzack.synology.me/jb_trans.png",
                      width: 81,
                    ), // Image.network
                  ), // Padding
                  Text(
                    "박준범",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'MBTI | ESTP',
                    style: TextStyle(fontSize: 20),
                  ), // Text
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "소개 : 안녕하십니까 9조 팀원 박준범 입니다. 여러분들과 함께 다양한 프로잭트를 진행하고 서로 좋은 결과를 맞이하고 싶고 저의 좌우명은 의지만 있으면 못할게 없다 입니다 그렇기에 남들보다 노력하는 사람이 되고싶습니다 만나서 반갑습니다. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ), // Container
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "스타일 : 자기주장이 강한편이지만 타인의 의견도 듣는걸 좋아합니다 저 스스로를 과대평가하는걸 싫어하기에 겸손해지고 싶어합니다 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ), // Container
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "장점 : 음.... 저는 잘 모르겟는데 MBTI E라서 장점이란 얘기를 많이 들었습니다 그러면 장점이겠죠? ㅎㅎ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ), // Container
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "블로그 | https://velog.io/@rheo191710",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ), // Container
                ]) // Column
                ) // Padding
            ) // SingleChildScrollView
        ); //Scaffold
  } //Widget
}

// 6번째 페이지
class SixTab extends StatelessWidget {
  const SixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            DefaultTabController.of(context)?.animateTo(0);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '팀원 | 이상훈',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'MBTI | ISTJ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '소개 | 안녕하세요! 내일배움캠프 7기_Android 9조'
              ' 이상훈입니다!'
              ' 아직 미숙하지만'
              ' 열심히 하겠습니다!',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '스타일 | 좋은 의견이 있으면 수용한다. '
              '팀원과 좋은 관계를 유지하려 합니다. '
              '먼저 의견을 제시하기보다는 경청부터 합니다.',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '장점 | 기억력이 좋다. 근면성실하다. 책임감이 강하다. '
              '인내력이 강하다. 정직하다. 체계적이고 논리적이다. '
              '실수한 것에 대해 즉각 수정한다. ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '블로그: https://velog.io/@sanghoon_2',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
