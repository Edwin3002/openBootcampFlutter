import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Dialog",
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  String title = "Simple Dialog";

  State createState() {
    return _MyHome();
  }
}

class _MyHome extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }

}
