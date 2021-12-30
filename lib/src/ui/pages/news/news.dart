import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:its_soccer_time/src/ui/font.dart';
import 'package:its_soccer_time/src/ui/floatingmenu.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

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
                SizedBox(
                  height: (116 / XDsize.XdH) * size.height,
                ),
                Text(
                  "    뉴스",
                  style: TextStyle(
                    fontFamily: MyFonts.gmarketsans,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: -0.25,
                  ),
                ),
                SizedBox(
                  width: (523 / XDsize.XdW) * size.width,
                ),
                Icon(Icons.search, size: 32),
              ],
            ),
            SizedBox(
              height: (79 / XDsize.XdH) * size.height,
            ),
            Stack(children: [
              Container(
                height: (500 / XDsize.XdH) * size.height,
                width: (690 / XDsize.XdW) * size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(
                  'assets/png/news1.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: (500 / XDsize.XdH) * size.height,
                width: (690 / XDsize.XdW) * size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black87
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0, 0.5, 1],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Text(
                  "벤투감독, 첫 골 터져도 웃지 않았다.",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                bottom: (25 / XDsize.XdH) * size.height,
                left: (20 / XDsize.XdW) * size.width,
              )
            ]),
            SizedBox(
              height: (30 / XDsize.XdH) * size.height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                    height: (357 / XDsize.XdH) * size.height,
                    width: (403 / XDsize.XdW) * size.width,
                    decoration: BoxDecoration(
                      // color: Colors.green,s
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Image.asset(
                      'assets/png/news3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: (357 / XDsize.XdH) * size.height,
                    width: (403 / XDsize.XdW) * size.width,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black87
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0, 0.5, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Text(
                      "올림픽 '4강 좌절' 멕시코전",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    bottom: (25 / XDsize.XdH) * size.height,
                    left: (20 / XDsize.XdW) * size.width,
                  )
                ]),
                SizedBox(
                  width: (30 / XDsize.XdW) * size.width,
                ),
                Stack(children: [
                  Container(
                    height: (357 / XDsize.XdH) * size.height,
                    width: (253 / XDsize.XdW) * size.width,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Image.asset(
                      'assets/png/news2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: (357 / XDsize.XdH) * size.height,
                    width: (253 / XDsize.XdW) * size.width,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black87
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0, 0.5, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Text(
                      "캡틴손의 파이팅",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    bottom: (25 / XDsize.XdH) * size.height,
                    left: (20 / XDsize.XdW) * size.width,
                  )
                ]),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingMenu()
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.transparent,
        activeBackgroundColor: Colors.transparent,
        useRotationAnimation: true,
        // SvgPicture.asset("assets/svg/icons/soccer-ball.svg");
        elevation: 0.0,
        child: Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/svg/icons/soccer-ball.png',
          ),
        ),
        children: [
          SpeedDialChild(
            onTap: () {
              Get.offAllNamed("/settings");
            },
            foregroundColor: Color(MyColors.non_selected),
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
            foregroundColor: Color(MyColors.non_selected),
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
            foregroundColor: Color(MyColors.pointcolor),
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
            elevation: 0.0,
            foregroundColor: Color(MyColors.non_selected),
          ),
        ],
      ),
      // floatingActionButton: FloatingMenu(),
    );
  }
}
