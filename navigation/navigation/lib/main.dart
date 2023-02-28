import 'package:flutter/material.dart';
import 'package:navigation/screen2.dart';
import 'package:navigation/screen3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Screen one'),
      routes: <String,WidgetBuilder >{
      "/route1": (BuildContext context) => MyHomePage(title: "Page 1"),
      "/route2": (BuildContext context) => ScreenTwo(title: "Page 2"),
      "/route3": (BuildContext context) => ScreenThree(title: "Page 3")
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>
        const ScreenTwo(title: "Screen two")
        ));
        },
        tooltip: 'Change to screen two',
        child: const Icon(Icons.arrow_back_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
