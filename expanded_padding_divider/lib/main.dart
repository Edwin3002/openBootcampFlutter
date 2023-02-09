import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Expanded",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Expanded"));
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
      body: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(padding: EdgeInsets.all(5)),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(10),
                child: const Text("A"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(right:20),
                  child: const Text("B"),
                ),
              ),
            ),
            Divider(color: Colors.pink, indent: 5, height: 20),
            Expanded(
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.fromLTRB(5, 10, 15, 20),
                child: const Text("C"),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
