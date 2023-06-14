import 'package:big_made_burger/home.dart';
import 'package:big_made_burger/pageview_demo.dart';
import 'package:flutter/material.dart';

import 'app_bar_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
