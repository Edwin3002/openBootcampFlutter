import 'package:b_lo_c/countController.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "BLoC",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "BLoC"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CountControl _countControl = CountControl();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(builder: (context, snapshot) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        // body: (),
      );
    });
  }
}
