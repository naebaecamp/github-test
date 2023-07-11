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
    return Center(child: Text('두번째 페이지'));
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
