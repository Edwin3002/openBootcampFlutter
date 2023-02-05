import 'package:flutter/cupertino.dart';
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
                shadowColor: Colors.amberAccent),
          ),
          Padding(padding: EdgeInsets.all(50)),
          TextButton(
              onPressed: _textBtnPress,
              child: Text(
                "Btn press",
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
          Padding(padding: EdgeInsets.all(8)),
          IconButton(
              onPressed: _iconBtnPress,
              icon: Icon(Icons.accessibility),
              color: Colors.blue,
              iconSize: 30),
          Padding(padding: EdgeInsets.all(8)),
          Ink(
            decoration:
                ShapeDecoration(shape: CircleBorder(), color: Colors.lightBlue),
            child: IconButton(
                onPressed: _iconBtnPress,
                icon: Icon(Icons.accessibility),
                color: Colors.white,
                iconSize: 30),
          ),
          Padding(padding: EdgeInsets.all(8)),
          OutlinedButton(
            onPressed: _outlineBtnPress,
            child: Text(
              "Outline press",
              style: TextStyle(color: Colors.purple),
            ),
            style: OutlinedButton.styleFrom(
                side: BorderSide(
                    width: 1, color: Colors.purple, style: BorderStyle.solid)),
          ),
          Padding(padding: EdgeInsets.all(8)),
          CupertinoButton(
              child: Text("Cupertino btn"), onPressed: _cupertinoBtnPress, color: Colors.greenAccent,)
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

  void _textBtnPress() {
    _thatBtn("tex");
  }

  void _iconBtnPress() {
    _thatBtn("ico");
  }

  void _outlineBtnPress() {
    _thatBtn("out");
  }

  void _cupertinoBtnPress() {
    _thatBtn("cup");
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
        case "tex":
          btnPress = "Text action";
          break;
        case "ico":
          btnPress = "Icon action";
          break;
        case "out":
          btnPress = "OutLine action";
          break;
        case "cup":
          btnPress = "Cupertino action";
          break;
        default:
      }
    });
  }
}
