import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Bottom Sheet",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Bottom Sheet"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _option = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: (Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: _selectOption,
            child: Text("Open Simple Dialog"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, textStyle: TextStyle(color: Colors.blue)),
          ),
          ElevatedButton(
            onPressed: _selectOptionBottomSheet,
            child: Text("Open Bottom Sheet"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, textStyle: TextStyle(color: Colors.blue)),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Text(
            "The choice is ",
            style: TextStyle(color: Colors.indigo, fontSize: 20),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Text(
            "$_option",
            style: TextStyle(
                color: Colors.cyan, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]),
      )),
    );
  }

  Future<void> _selectOption() async {
    switch (await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Select one option"),
            children: [
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.directions_car), Text("Car")],
                ),
                onPressed: () {
                  Navigator.pop(context, ListOptions.car);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.directions_train), Text("Train")],
                ),
                onPressed: () {
                  Navigator.pop(context, ListOptions.train);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.directions_boat_sharp), Text("Boat")],
                ),
                onPressed: () {
                  Navigator.pop(context, ListOptions.boat);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.airplanemode_active), Text("Airplane")],
                ),
                onPressed: () {
                  Navigator.pop(context, ListOptions.airplane);
                },
              ),
            ],
          );
        })) {
      case ListOptions.car:
        _optionSelected("car");
        break;
      case ListOptions.train:
        _optionSelected("train");
        break;
      case ListOptions.boat:
        _optionSelected("boat");
        break;
      case ListOptions.airplane:
        _optionSelected("airplane");
        break;
      default:
    }
  }

  Future<void> _selectOptionBottomSheet() async {
    switch (await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
                color: Colors.purple,
                child: Column(
                  children: [
                    Text(
                      "Select an option",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SimpleDialogOption(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.directions_car), Text("Car")],
                      ),
                      onPressed: () {
                        Navigator.pop(context, ListOptions.car);
                      },
                    ),
                    Divider(),
                    SimpleDialogOption(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.directions_train), Text("Train")],
                      ),
                      onPressed: () {
                        Navigator.pop(context, ListOptions.train);
                      },
                    ),
                    Divider(),
                    SimpleDialogOption(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.directions_boat_sharp),
                          Text("Boat")
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context, ListOptions.boat);
                      },
                    ),
                    Divider(),
                    SimpleDialogOption(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.airplanemode_active),
                          Text("Airplane")
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context, ListOptions.airplane);
                      },
                    ),
                  ],
                )),
          );
        })) {
      case ListOptions.car:
        _optionSelected("car");
        break;
      case ListOptions.train:
        _optionSelected("train");     
        break;
      case ListOptions.boat:
        _optionSelected("boat");
        break;
      case ListOptions.airplane:
        _optionSelected("airplane");
        break;
      default:
    }
  }

  void _optionSelected(String option) {
    setState(() {
      _option = option;
    });
  }
}

enum ListOptions { car, train, boat, airplane }