import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/ui/font.dart';
import 'package:its_soccer_time/src/ui/floatingmenu.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffffffff), Color(0xffF0F7FD)])),
        child: Column(
          children: [
            SizedBox(
              height: (116 / XDsize.XdH) * size.height,
            ),
            Row(
              children: [
                Text(
                  "    설정",
                  style: TextStyle(
                    fontFamily: MyFonts.gmarketsans,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: -0.25,
                  ),
                ),
                SizedBox(
                  width: (483 / XDsize.XdW) * size.width,
                ),
              ],
            ),
          ],
        ),
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
