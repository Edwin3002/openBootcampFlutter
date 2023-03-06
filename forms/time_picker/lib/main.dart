import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Time"),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale("as", " ES")],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _date = null;
  var _time = null;

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
            ElevatedButton(
              onPressed: _selectedDate,
              child: Text(
                "Introduce Date",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  textStyle: TextStyle(color: Colors.white)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            const Text("Date is"),
            Text(_date == null
                ? "nobody Date"
                : "${_date.day}/${_date.month}/${_date.year}"),
            ElevatedButton(
              onPressed: _selectedTime,
              child: Text(
                "Introduce Time",
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: TextStyle(color: Colors.white)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            const Text("Time is"),
            Text(_date == null
                ? "nobody Time"
                : "${_time.format(context)}"),
          ],
        ),
      )),
    );
  }

  Future _selectedDate() async {
    DateTime? _dateSelect = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    setState(() {
      if (_dateSelect != null) {
        _date = _dateSelect;
      }
    });
  }

  Future _selectedTime() async {
    TimeOfDay? _timeSelect =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      if (_timeSelect != null) {
        _time = _timeSelect;
      }
    });
  }
}
