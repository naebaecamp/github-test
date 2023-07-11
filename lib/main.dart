import 'package:flutter/material.dart';

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

// 메인 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red[300]!, Colors.red[600]!]),
      ),
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.network(
          "https://velog.velcdn.com/images/subak/post/03defd1c-a5a9-4f69-8dbd-9b2cf4b1d24b/image.png",
          fit: BoxFit.cover,
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
    return Container(
      color: Colors.blue[500],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    DefaultTabController.of(context).animateTo(0);
                  },
                  child: Icon(
                    Icons.arrow_left,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "박준수",
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
            decoration:
                BoxDecoration(color: Colors.blue[300], shape: BoxShape.circle),
            child: Image.network(
              "http://wagzack.synology.me/js_trans.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('MBTI ▶ INFP'),
          Text("종족 : 인간"),
        ],
      ),
    );
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar(
      leading: IconButton(
        onPressed: () => _HomePageState(),
        icon: Icon(Icons.arrow_back_rounded),
      ),
    );
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                bottom: 10,
              ),
              child: Icon(Icons.account_circle, size: 150),
            ),
            ExpansionTile(
              title: Text(
                '기본 정보',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              //backgroundColor: Colors.black,
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
    );
  }
}

// 4번째 페이지
class FourTab extends StatelessWidget {
  const FourTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('세번째 페이지'));
  }
}

// 5번째 페이지
class FiveTab extends StatelessWidget {
  const FiveTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('네번째 페이지'));
  }
}

// 6번째 페이지
class SixTab extends StatelessWidget {
  const SixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
