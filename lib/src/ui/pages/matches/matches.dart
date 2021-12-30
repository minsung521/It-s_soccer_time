import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/ui/font.dart';
import 'package:its_soccer_time/src/ui/floatingmenu.dart';
// import 'package:table_calendar/table_calendar.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

import '../../match_listcard.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
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
                  "    캘린더",
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
                Icon(Icons.search, size: 32),
              ],
            ),
            SizedBox(
              height: (28 / XDsize.XdH) * size.height,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xffffffff),
                  ),
                  width: (690 / XDsize.XdW) * size.width,
                  height: (151 / XDsize.XdH) * size.height,
                  child: DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Color(MyColors.pointcolor),
                    selectedTextColor: Colors.white,
                    locale: "ko_KR",
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                    deactivatedColor: Colors.amber,
                    monthTextStyle: TextStyle(fontSize: 0),
                    dateTextStyle: TextStyle(fontSize: 16),
                    width: (80 / XDsize.XdW) * size.width,
                    height: (123 / XDsize.XdH) * size.height,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: (25 / XDsize.XdH) * size.height,
            ),
            SizedBox(
              height: (72 / XDsize.XdH) * size.height,
              width: (140 / XDsize.XdW) * size.width,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(MyColors.pointcolor),
                ),
                onPressed: () {},
                child: Text(
                  "펼쳐보기",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: (75 / XDsize.XdH) * size.height,
            ),
            Row(
              children: [
                Text(
                  "    경기일정",
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
            SizedBox(
              height: (25 / XDsize.XdH) * size.height,
            ),
            SizedBox(
              height: (72 / XDsize.XdH) * size.height,
              width: (140 / XDsize.XdW) * size.width,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(MyColors.pointcolor),
                ),
                onPressed: () {},
                child: Text(
                  "펼쳐보기",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
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
            foregroundColor: Color(MyColors.non_selected),
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.favorite),
            onTap: () {
              Get.offAllNamed("/favorites");
            },
            backgroundColor: Colors.transparent,
            foregroundColor: Color(MyColors.non_selected),
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.notifications),
            onTap: () {
              Get.offAllNamed("/");
            },
            foregroundColor: Color(MyColors.non_selected),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.feed),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            onTap: () {
              Get.offAllNamed("/news");
            },
            foregroundColor: Color(MyColors.non_selected),
          ),
          SpeedDialChild(
            child: Icon(Icons.calendar_today),
            backgroundColor: Colors.transparent,
            onTap: () {
              Get.offAllNamed("/matches");
            },
            elevation: 0.0,
            foregroundColor: Color(MyColors.pointcolor),
          ),
        ],
      ),
      // floatingActionButton: FloatingMenu(),
    );
  }
}
