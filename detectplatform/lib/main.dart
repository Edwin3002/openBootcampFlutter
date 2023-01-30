import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Scaffold",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "ScaffoldApp Nav"));
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
  int _itemSelect = 0;
  String textShow = "0 : Home";

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? material() : cupertino();
  }

  Widget material() {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: () {
                _likedChange();
              },
              icon: _heart)
        ],
      ),
      drawer: Drawer(
        child: Column(children: const [
          DrawerHeader(
              child: Text(
            "Menu Draw",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )),
          Text("Link 1"),
          Text("Link 2"),
          Text("Link 3"),
        ]),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textShow,
            style: const TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _likedChange();
        },
        backgroundColor: Colors.cyan,
        icon: _heart,
        label: const Text("Like!"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.yellow,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.cyan,
              ),
              label: "account"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment,
                color: Colors.red,
              ),
              label: "statics"),
        ],
        currentIndex: _itemSelect,
        onTap: _itemPress,
      ),
    );
  }

  Widget cupertino() {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          children: const [
            Text(
              "Nav navigation ios",
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20),
            )
          ],
        ),
      ),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
        middle: Text("Title page", style: TextStyle(color: Colors.white)),
        trailing: Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _heart = const Icon(
          Icons.favorite_border,
          color: Colors.white,
        );
        _liked = false;
      } else {
        _heart = const Icon(
          Icons.favorite,
          color: Colors.red,
        );
        _liked = true;
      }
    });
  }

  void _itemPress(int index) {
    setState(() {
      _itemSelect = index;
      switch (_itemSelect) {
        case 0:
          textShow = "$_itemSelect: Home";
          break;
        case 1:
          textShow = "$_itemSelect: Account";
          break;
        case 2:
          textShow = "$_itemSelect: Statics";

          break;
        default:
      }
    });
  }
}
