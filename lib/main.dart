import 'package:flutter/material.dart';
import 'package:flutterstandardapp/static/themes.dart';
import 'package:flutterstandardapp/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter base app',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      home: Home(),
    );
  }
}
