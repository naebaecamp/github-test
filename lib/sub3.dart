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
              onPressed: () {},
              icon: Icon(CupertinoIcons.arrow_left, color: Colors.white),
            ),
          ],
        ),
        leadingWidth: 100,
        title: Text(
          "남경화",
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
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "남경화",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "INFJ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "소개 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "스타일 |\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "장점 |\n Contrary to popular belief, Lorem Ipsum is not simply random text.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "블로그 | https://velog.io/@wack",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
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
