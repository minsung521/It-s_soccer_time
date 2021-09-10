import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:its_soccer_time/src/data/font.dart';
import 'package:its_soccer_time/src/elements/floatingmenu.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "경기일정",
            style: TextStyle(fontFamily: MyFonts.gmarketsans),
          ),

          // shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
        ),
        floatingActionButton: FloatingMenu()
        // floatingActionButton: FloatingMenu(),
        );
  }
}
