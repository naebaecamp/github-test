// 4번째 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourTab extends StatelessWidget {
  const FourTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                DefaultTabController.of(context).animateTo(0);
              },
              icon: Icon(CupertinoIcons.arrow_left, color: Colors.white),
            ),
          ],
        ),
        leadingWidth: 100,
        title: Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            // fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                      "http://wagzack.synology.me/char_trans.png"),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    '남경화',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "I N F J",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    '" 안드로이드 7기에 합류하게 된 남경화 입니다. 비전공자이지만 캠프기간 동안 잘부탁드립니다! " ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "우유부단함을 싫어해서 확실한 성격입니다. 일을 미루는 것을 싫어하며, 시작한 것에 끝을 보며, 주어진 일은 철저하게 처리하는 스타일입니다. .",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "블로그 | https://velog.io/@wack",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
