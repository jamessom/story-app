import 'package:flutter/material.dart';
import 'customIcons.dart';

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
    const bgColor = 0xFF2d3447;
    const topBarPaddingEdgeInsets =
        EdgeInsets.only(left: 12.0, right: 12.0, top: 30.0, bottom: 8.0);

    const menuIcon = IconButton(
      icon: Icon(CustomIcons.menu, color: Colors.white, size: 30.0),
      onPressed: null,
    );

    const menuSearch = IconButton(
      icon: Icon(Icons.search, color: Colors.white, size: 30.0),
      onPressed: null,
    );

    var topBarElements = Padding(
        padding: topBarPaddingEdgeInsets,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[menuIcon, menuSearch],
        ));

    const mainTitle = Text(
      "Treding",
      style: TextStyle(
          color: Colors.white,
          fontSize: 46.0,
          fontFamily: "Calibre-Semibold",
          letterSpacing: 1.0),
    );

    const mainTitleOptionIcon = IconButton(
      icon: Icon(CustomIcons.option, color: Colors.white, size: 12.0),
      onPressed: null,
    );

    var mainTitleElements = Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[mainTitle, mainTitleOptionIcon],
      ),
    );

    var bodyContent = SingleChildScrollView(
      child: Column(
        children: <Widget>[topBarElements, mainTitleElements],
      ),
    );

    return Scaffold(
      backgroundColor: Color(bgColor),
      body: bodyContent,
    );
  }
}
