import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Radio",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Radio"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  optionsRadio _optRadio = optionsRadio.Airplane;
  Icon _iconRadio = Icon(Icons.airplane_ticket);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Radio"),
            Divider(),
            Column(
              children: [
                const Text("Airplane"),
                Radio(
                  value: optionsRadio.Airplane,
                  groupValue: _optRadio,
                  onChanged: (value) {
                    setState(() {
                      _optRadio = optionsRadio.Airplane;
                      _iconRadio = Icon(Icons.airplane_ticket);
                    });
                  },
                ),
                const Text("Boat"),
                Radio(
                  value: optionsRadio.Boat,
                  groupValue: _optRadio,
                  onChanged: (value) {
                    setState(() {
                      _optRadio = optionsRadio.Boat;
                      _iconRadio = Icon(Icons.water);
                    });
                  },
                ),
                const Text("Car"),
                Radio(
                  value: optionsRadio.Car,
                  groupValue: _optRadio,
                  onChanged: (value) {
                    setState(() {
                      _optRadio = optionsRadio.Car;
                      _iconRadio = Icon(Icons.car_crash);
                    });
                  },
                ),
                Text("$_optRadio"),
                _iconRadio
              ],
            )
          ],
        ),
      )),
    );
  }
}

enum optionsRadio {
  Airplane,
  Boat,
  Car,
}
