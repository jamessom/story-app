import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var bgColor = 0xFF2d3447;

    var bodyContent = SingleChildScrollView(
      child: Column(),
    );

    return Scaffold(
      backgroundColor: Color(bgColor),
      body: bodyContent,
    );
  }
}
