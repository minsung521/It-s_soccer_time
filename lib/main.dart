import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:its_soccer_time/src/ui/pages/home/home.dart';
import 'package:its_soccer_time/src/ui/pages/fav/favorites.dart';
import 'package:its_soccer_time/src/ui/pages/matches/matches.dart';
import 'package:its_soccer_time/src/ui/pages/news/news.dart';
import 'package:its_soccer_time/src/ui/pages/settings/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "It's soccer time",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        // highlightColor: Colors.transparent,
        // shadowColor: Colors.transparent,
      ),
      home: Home(),
      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/news",
          page: () => News(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/settings",
          page: () => Settings(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/matches",
          page: () => Matches(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/favorites",
          page: () => Favorites(),
          transition: Transition.cupertino,
        ),
      ],
    );
  }
}
