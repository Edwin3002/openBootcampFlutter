import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Statefull App",
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  String title = "Random Color";
  Color color = Colors.red;

  State createState() {
    return _MyHome();
  }
}

class _MyHome extends State<MyHome> {

int _red = 0;
int _green = 0;
int _blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: widget.color,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("The color is: "),
          Container(
            color: widget.color,
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            alignment: Alignment.center,
            child: Text(
                "R (${widget.color.red}) G (${widget.color.green}) B (${widget.color.blue})"),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.brush),
        onPressed: _changeColor,
        backgroundColor: widget.color,
      ),
    );
  }

  void _changeColor() {

_red = Random.secure().nextInt(256);
_green = Random.secure().nextInt(256);
_blue = Random.secure().nextInt(256);

    setState(() {
      widget.color = Color.fromRGBO(_red, _blue, _blue, 1);
    });
  }
}
