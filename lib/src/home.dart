import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:its_soccer_time/src/elements/floatingmenu.dart';

import 'data/font.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "It's soccertime",
          style: TextStyle(fontFamily: MyFonts.gmarketsans),
        ),

        // shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
      ),
      floatingActionButton: FloatingMenu(),
      // floatingActionButton: FloatingMenu(),
    );
  }
}
