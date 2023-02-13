import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Cupertino NavigationBars",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Cupertino"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1.
    // return CupertinoPageScaffold(
    // child: Center(
    // child:  Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: const [
    //  Text("Cupertino App")
    // ],)
    // ),
    // );

// 2.
    // return CupertinoTabScaffold(
    //   tabBar: CupertinoTabBar(backgroundColor: Colors.orange, items: const [
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.home, color: Colors.white), label: "Home"),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.supervised_user_circle, color: Colors.white),
    //         label: "Account"),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.book, color: Colors.white), label: "Statistics"),
    //   ]),
    //   tabBuilder: (context, index) {
    //     switch (index) {
    //       case 0:
    //         return CupertinoTabView(builder: (context) {
    //           return CupertinoPageScaffold(
    //             child: Center(
    //                 child: Column(
    //               children: [Text("$index: Home")],
    //             )),
    //           );
    //         });
    //       case 1:
    //         return CupertinoTabView(builder: (context) {
    //           return CupertinoPageScaffold(
    //             child: Center(
    //                 child: Column(
    //               children: [Text("$index: Account")],
    //             )),
    //           );
    //         });
    //       case 2:
    //         return CupertinoTabView(builder: (context) {
    //           return CupertinoPageScaffold(
    //             child: Center(
    //                 child: Column(
    //               children: [Text("$index: Statistics")],
    //             )),
    //           );
    //         });
    //       default:
    //         return CupertinoTabView(builder: (context) {
    //           return CupertinoPageScaffold(
    //             child: Center(
    //                 child: Column(
    //               children: [Text("$index: Home")],
    //             )),
    //           );
    //         });
    //     }
    //   },
    // );

    // 3.
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          children: const [
            Text(
              "Nav navigation",
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
}
