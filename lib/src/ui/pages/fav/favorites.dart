import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/ui/font.dart';
import 'package:its_soccer_time/src/ui/floatingmenu.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  var index = 0;
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
            GestureDetector(
              onTap: () {
                setState(() {
                  index = index == 0 ? 1 : 0;
                });
              },
              child: Row(
                children: [
                  Text(
                    "    내 선수",
                    style: TextStyle(
                      color: index == 1 ? Colors.black : Colors.grey,
                      fontFamily: MyFonts.gmarketsans,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: -0.25,
                    ),
                  ),
                  Text(
                    " 내 팀",
                    style: TextStyle(
                      color: index == 0 ? Colors.black : Colors.grey,
                      fontFamily: MyFonts.gmarketsans,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: -0.25,
                    ),
                  ),
                ],
              ),
            ),
            index == 0
                ? Container(
                    child: Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: Container(
                            height: (260 / XDsize.XdH) * size.height,
                            width: (218 / XDsize.XdW) * size.width,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/png/KFA.png',
                                  height: (120 / XDsize.XdH) * size.height,
                                  width: (120 / XDsize.XdW) * size.width,
                                ),
                                SizedBox(
                                  height: (25 / XDsize.XdH) * size.height,
                                ),
                                Text("KFA"),
                              ],
                            ),
                          ));
                        }),
                  ))
                : Container(
                    child: Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: Container(
                            height: (260 / XDsize.XdH) * size.height,
                            width: (218 / XDsize.XdW) * size.width,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/png/Son.png',
                                  height: (120 / XDsize.XdH) * size.height,
                                  width: (120 / XDsize.XdW) * size.width,
                                ),
                                SizedBox(
                                  height: (25 / XDsize.XdH) * size.height,
                                ),
                                Text("손흥민"),
                              ],
                            ),
                          ));
                        }),
                  ))
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
            foregroundColor: Color(MyColors.pointcolor),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.notifications),
            foregroundColor: Color(MyColors.non_selected),
            onTap: () {
              Get.offAllNamed("/");
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          SpeedDialChild(
            child: Icon(Icons.feed),
            foregroundColor: Color(MyColors.non_selected),
            backgroundColor: Colors.transparent,
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
      // floatingActionButton: FloatingMenu(),
    );
  }
}
