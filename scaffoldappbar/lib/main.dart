import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Scaffold", home: MyHomePage(title: "ScaffoldApp Home"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _heart = Icon(
    Icons.favorite_border,
    color: Colors.white,
  );
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [IconButton(onPressed: (){_likedChange();}, icon: _heart)],
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _heart = Icon(
          Icons.favorite_border,
          color: Colors.white,
        );
        _liked = false;
      } else {
        _heart = Icon(
          Icons.favorite,
          color: Colors.white,
        );
        _liked = true;
      }
    });
  }
}
