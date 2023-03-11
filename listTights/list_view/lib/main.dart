import 'package:flutter/material.dart';
import 'package:list_view/media.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "ListView"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _medias = [
    Media("react", "front", Image.asset("Assets/Images/react.png")),
    Media("redux", "front", Image.asset("Assets/Images/redux.png")),
    Media("node", "back", Image.asset("Assets/Images/node.png")),
    Media("express", "back", Image.asset("Assets/Images/express.png")),
    Media("bootstrap", "css", Image.asset("Assets/Images/bootstrap.png")),
    Media("tailwind", "css", Image.asset("Assets/Images/tailwind.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: _medias.length,
          itemBuilder: ((context, index) {
            final item = _medias.elementAt(index);
            return GridTileBar(
              title: Text("${item.name}"),
              subtitle: Container(child: item.img),
            );
          }),
        ));
  }
}
