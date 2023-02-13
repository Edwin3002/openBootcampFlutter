import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Container",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Container"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Container 1",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.yellow,
              margin: const EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: const Text(
                "Container 2",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: const Text(
                "Container 3",
                style: TextStyle(color: Colors.black),
              ),
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              margin: const EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: const Text(
                "Container 4",
                style: TextStyle(color: Colors.white),
              ),
              decoration:
                  BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
              padding: EdgeInsets.all(40),
              margin: const EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: const Text(
                "Container 5",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    color: Colors.black, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.all(40),
              margin: const EdgeInsets.only(bottom: 30),
            ),
            Container(
            color: Colors.pink,
              child: Icon(
                Icons.train,
                color: Colors.amber,
              ),
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(bottom: 30),
              alignment: Alignment.topCenter,
            ),
            Container(
            color: Colors.purple,
              child: Icon(
                Icons.apartment,
                color: Colors.amber,
              ),
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(bottom: 30),
              alignment: const Alignment(-1, 1),
            ),
          ],
        ),
      ),
    );
  }
}
