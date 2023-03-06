import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Switch",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Switch"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _option = false;

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
            const Text("Select option"),
            Divider(),
            const Text("Input"),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: _option,
                    onChanged: ((value) {
                      setState(() {
                        _option = value;
                      });
                    })),
                    Text(_option ? "Active" : "Inactivated")
              ],
            )
          ],
        ),
      )),
    );
  }
}
