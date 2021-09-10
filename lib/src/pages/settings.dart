import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/data/font.dart';
import 'package:its_soccer_time/src/elements/floatingmenu.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "설정",
          style: TextStyle(fontFamily: MyFonts.gmarketsans),
        ),

        // shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
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
          ),
          SpeedDialChild(
            child: Icon(Icons.favorite),
            onTap: () {
              Get.offAllNamed("/favorites");
            },
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.grey,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.notifications),
            foregroundColor: Colors.grey,
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
            foregroundColor: Colors.grey,
            onTap: () {
              Get.offAllNamed("/matches");
            },
            elevation: 0.0,
          ),
        ],
      ),
      // floatingActionButton: FloatingMenu(),
    );
  }
}
