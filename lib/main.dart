import 'package:flutter/material.dart';
import 'package:uso_navigator2/pages/my_home_page.dart';
import 'package:uso_navigator2/pages/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const MyHomePage(),
        "/Second": (BuildContext context) => const SecondPage(),
      },
    );
  }
}
