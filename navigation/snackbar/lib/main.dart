import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Snackbar",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "snackbar"));
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
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Example Snackbar Text"),
                duration: Duration(seconds: 4),
                backgroundColor: Colors.blue,
                action: SnackBarAction(
                    label: "Close",
                    textColor: Colors.white,
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    }),
              ));
            },
            child: Text("Open Snackbar"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, textStyle: TextStyle(color: Colors.blue)),
          )
        ]),
      )),
    );
  }
}

