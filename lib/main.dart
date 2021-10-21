import 'package:facebook_flutter/screens/screens.dart';
import 'package:facebook_flutter/styles/color_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      theme: ThemeData(primarySwatch: Colors.blue, scaffoldBackgroundColor: ColorPalette.scaffold),
      home: NavScreen(),
    );
  }
}
