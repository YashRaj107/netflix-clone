import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/Constants/video_Player.dart';
import 'package:netflix/Screens/Login_Screen.dart';
import 'package:netflix/Screens/Netflix.dart';
import 'package:netflix/Screens/popup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),

    );
  }
}
