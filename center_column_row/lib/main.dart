import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Center",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Center"));
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
      // body: Center(
      // widthFactor: 0.8,
      // heightFactor: 5,
      //     child: Container(
      //     color: Colors.blue,
      //   child: const Text(
      //     "Container Text",
      //     style: TextStyle(color: Colors.red, fontSize: 40),
      //   ),
      // ))
      body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(
              Icons.home,
              color: Colors.red,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.home,
              color: Colors.green,
            ),
            Icon(
              Icons.home,
              color: Colors.green,
            ),
            Icon(
              Icons.home,
              color: Colors.green,
            ),
            Icon(
              Icons.home,
              color: Colors.green,
            ),
            Icon(
              Icons.home,
              color: Colors.green,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
          ],
        ),
      ]),
    );
  }
}
