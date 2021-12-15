import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FloatingMenu extends StatefulWidget {
  const FloatingMenu({Key? key}) : super(key: key);

  @override
  _FloatingMenuState createState() => _FloatingMenuState();
}

class _FloatingMenuState extends State<FloatingMenu> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: Colors.transparent,
      activeBackgroundColor: Colors.transparent,
      useRotationAnimation: true,
      // SvgPicture.asset("assets/svg/icons/soccer-ball.svg");
      elevation: 0.0,
      child: Container(
        color: Colors.transparent,
        child: Image.asset('assets/svg/icons/soccer-ball.png'),
      ),
      children: [
        SpeedDialChild(
          onTap: () {
            Get.toNamed("/settings");
          },
          child: Icon(Icons.settings),
          // label: "설정",
          backgroundColor: Colors.transparent,
          // labelBackgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        SpeedDialChild(
          child: Icon(Icons.favorite),
          // label: "즐겨찾기",
          backgroundColor: Colors.transparent,
          // labelBackgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        SpeedDialChild(
          child: Icon(Icons.notifications),
          // label: "경기알림",
          // labelBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        SpeedDialChild(
          child: Icon(Icons.feed),
          // label: "뉴스",
          // labelBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        SpeedDialChild(
          child: Icon(Icons.calendar_today),
          // labelBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          // label: "경기일정",
          elevation: 0.0,
        ),
      ],
    );
  }
}
