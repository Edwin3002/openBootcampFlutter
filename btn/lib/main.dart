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
  String btnPress = "Ninguno";

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
          Text("Btn press"),
          Text(
            "$btnPress",
            style: TextStyle(
                color: Colors.cyan, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            onPressed: _elevatedPress,
            child: Text("Btn press 2"),
            style: ElevatedButton.styleFrom(
            elevation: 50,
            primary: Colors.amber,
            shadowColor: Colors.amberAccent
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingPress,
        tooltip: "Press",
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _floatingPress() {
    _thatBtn("flo");
  }

  void _elevatedPress() {
    _thatBtn("ele");
  }

  void _thatBtn(String btn) {
    setState(() {
      switch (btn) {
        case "flo":
          btnPress = "Floating action";
          break;
        case "ele":
          btnPress = "Elevated action";
          break;
        default:
      }
    });
  }
}
