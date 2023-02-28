import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key, required this.title});
  final String title;

  @override
  State<ScreenThree> createState() => ScreenThreeState();
}

class ScreenThreeState extends State<ScreenThree> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the ScreenThree object that was created by
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
        Navigator.pushNamed(context, "/route1");
        },
        tooltip: 'Change to screen one',
        child: const Icon(Icons.arrow_downward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
