import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Btn",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Btns"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _valueSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("texto ${_valueSlider.toStringAsFixed(2)}"),
            Slider(
            autofocus: false,
              value: _valueSlider,
              onChanged: (value) {
                setState(() {
                  _valueSlider = value;
                });
              },
            )
          ],
        ),
      )),
    );
  }
}
