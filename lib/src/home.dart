import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/elements/floatingmenu.dart';

import 'data/font.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "It's soccer time",
          style: TextStyle(
            fontFamily: MyFonts.gmarketsans,
            fontSize: 18,
            letterSpacing: -0.25,
          ),
        ),
        elevation: 10.0,
        shadowColor: Colors.white60,
      ),
      floatingActionButton: SpeedDial(
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
              Get.offAllNamed("/settings");
            },
            child: Icon(Icons.settings),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            foregroundColor: Colors.grey,
          ),
          SpeedDialChild(
            child: Icon(Icons.favorite),
            onTap: () {
              Get.offAllNamed("/favorites");
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            foregroundColor: Colors.grey,
          ),
          SpeedDialChild(
            child: Icon(Icons.notifications),
            onTap: () {
              Get.offAllNamed("/");
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.feed),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.grey,
            elevation: 0.0,
            onTap: () {
              Get.offAllNamed("/news");
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.calendar_today),
            backgroundColor: Colors.transparent,
            onTap: () {
              Get.offAllNamed("/matches");
            },
            foregroundColor: Colors.grey,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }
}
