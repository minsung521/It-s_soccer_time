import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/ui/floatingmenu.dart';
import '../../font.dart';
import '../../match_listcard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  "    It's soccer time",
                  style: TextStyle(
                    fontFamily: MyFonts.gmarketsans,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: -0.25,
                  ),
                ),
                SizedBox(
                  width: (229 / XDsize.XdW) * size.width,
                ),
              ],
            ),
            SizedBox(
              height: (25 / XDsize.XdH) * size.height,
            ),
            match_listcard(size: size),
            match_listcard(size: size),
            match_listcard(size: size),
            match_listcard(size: size),
            match_listcard(size: size),
            match_listcard(size: size),
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
            elevation: 0,
            foregroundColor: Color(MyColors.non_selected),
          ),
          SpeedDialChild(
            child: Icon(Icons.favorite),
            onTap: () {
              Get.offAllNamed("/favorites");
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            foregroundColor: Color(MyColors.non_selected),
          ),
          SpeedDialChild(
            child: Icon(Icons.notifications),
            onTap: () {
              Get.offAllNamed("/");
            },
            foregroundColor: Color(MyColors.pointcolor),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.feed),
            backgroundColor: Colors.transparent,
            foregroundColor: Color(MyColors.non_selected),
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
            foregroundColor: Color(MyColors.non_selected),
            elevation: 0.0,
          ),
        ],
      ),
    );
  }
}
