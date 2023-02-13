import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Stepper",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "Stepper"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Step> steps = [
    const Step(title: Text("Box 1"), content: Text("Cont of box 1")),
    const Step(title: Text("Box 2"), content: Text("Cont of box 2")),
    const Step(title: Text("Box 3"), content: Text("Cont of box 3")),
    const Step(title: Text("Box 4"), content: Text("Cont of box 4")),
    const Step(title: Text("Box 5"), content: Text("Cont of box 5")),
  ];

  int _currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stepper",
              style: Theme.of(context).textTheme.headline5,
            ),
            Stepper(
              steps: steps,
              currentStep: _currentStep,
              onStepContinue: _nextStep,
              onStepCancel: _backStep,
            )
          ],
        ),
      )),
    );
  }

  void _nextStep() {
    setState(() {
    if (_currentStep < 4){
      _currentStep++;
    }
    });
  }

  void _backStep() {
    setState(() {
    if(_currentStep > 0){
      _currentStep--;
    }
    });
  }
}
