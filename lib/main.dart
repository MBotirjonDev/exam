import 'package:exam/ui/firstpageforgame/login_page_for_player.dart';
import 'package:exam/ui/thirdpage/third_page_info.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: LoginPageForPlayer(),
    );
  }
}
