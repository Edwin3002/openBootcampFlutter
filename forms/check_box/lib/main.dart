import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CheckBox",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "CheckBox"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map _optionCheckBox = {
    optionsTransport.Airplane: false,
    optionsTransport.Boat: false,
    optionsTransport.Car: false
  };
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
            const Text("Check"),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _optionCheckBox[optionsTransport.Airplane],
                    onChanged: (value) {
                      setState(() {
                        _optionCheckBox[optionsTransport.Airplane] = value;
                      });
                    }),
                const Text("Airplane"),
                Icon(_optionCheckBox[optionsTransport.Airplane] ? Icons.airplane_ticket : null),
                Divider(),
                Checkbox(
                    value: _optionCheckBox[optionsTransport.Boat],
                    onChanged: (value) {
                      setState(() {
                        _optionCheckBox[optionsTransport.Boat] = value;
                      });
                    }),
                const Text("Boat"),
                Icon(_optionCheckBox[optionsTransport.Boat] ? Icons.beach_access : null),
                Divider(),
                Checkbox(
                    value: _optionCheckBox[optionsTransport.Car],
                    onChanged: (value) {
                      setState(() {
                        _optionCheckBox[optionsTransport.Car] = value;
                      });
                    }),
                const Text("Car"),
                Icon(_optionCheckBox[optionsTransport.Car] ? Icons.car_rental : null),
                Divider(),
              ],
            )
          ],
        ),
      )),
    );
  }
}

enum optionsTransport {
  Airplane,
  Boat,
  Car,
}
