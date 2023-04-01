import 'package:flutter/material.dart';
import 'package:triplet/Screen/solution_screen.dart';
import 'package:triplet/widget/bottom_bar.dart';

import 'Screen/home_screen.dart';
import 'Screen/more.dart';
import 'Screen/portfol_screen.dart';
import 'Screen/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  bool _showSplashScreen = true; // 스플래시 스크린을 보여줄지 여부를 나타내는 변수

  @override
  void initState() {
    super.initState();

    // 2초 후에 스플래시 스크린을 숨깁니다.
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showSplashScreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'triplet',
      // 스플래시 스크린을 보여줄지 여부에 따라서 화면을 다르게 구성합니다.
      home: _showSplashScreen ? SplashScreen() : DefaultTabController(length: 4,
        child:Scaffold(
          body: TabBarView(physics: NeverScrollableScrollPhysics(),
            children: [
              Home(),
              Solution(),
              Portfol(),
              ContactUsPage(),
            ],),
          bottomNavigationBar: Bottom(),
        ),
      ),
      theme:ThemeData(brightness: Brightness.dark,primaryColor: Colors.black, accentColor: Colors.white,
          textTheme: TextTheme(
              headline1: TextStyle(
                color: Colors.white,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.w700,
                fontSize: 40,

              )
          )

      ),
    );
  }
}
