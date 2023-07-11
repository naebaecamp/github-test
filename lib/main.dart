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

// 첫번째 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('메인 페이지'));
  }
}

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('첫번째 페이지'));
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
    return Center(child: Text('다섯번째 페이지'));
  }
}
