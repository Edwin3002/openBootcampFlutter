import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Alert Diaolog",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Alert Diaolog"));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? Key, required this.title}) : super(key: Key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: (Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
            },
            child: Text("Open Dialog"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, textStyle: TextStyle(color: Colors.blue)),
          )
        ]),
      )),
    );
  }

}

