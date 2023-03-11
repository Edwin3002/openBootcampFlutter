import 'package:flutter/material.dart';
import 'package:models/media.dart';

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
        body: ListView.builder(
            itemCount: _medias.length,
            itemBuilder: (context, index) {
              final item = _medias[index];
              return Dismissible(
              direction: DismissDirection.endToStart,
                key: Key(item.name),
                background: Container(
                color: Colors.red[400],
                  child: Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.cyan,
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    _medias.removeAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("${item.name} ha sido borrado")));
                  });
                },
                child: Card(elevation: 10,
                  child: ListTile(
                    title: Text("${item.name}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 20)),
                    subtitle: Text(
                      "${item.category}",
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text("${item.name}"), content: item.img);
                          });
                    },
                  ),
                ),
              );
            }));
  }
}
