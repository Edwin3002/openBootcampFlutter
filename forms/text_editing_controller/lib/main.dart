import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TextEditing",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "TextEditing"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style1 = TextStyle(color: Colors.white);
  TextStyle style2 =
      TextStyle(color: Colors.orange, fontWeight: FontWeight.bold);
  String _textInput = "Nobody text";
  String _textSend = "Nobody send text";

  // String _introduceText = "Nobody text";
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Form",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    const Text("Enter your name"),
                    TextField(
                      // keyboardType: TextInputType., ///seleccionar tipos de inputs
                      decoration: const InputDecoration(hintText: "your nme"),
                      // onChanged: (value) {
                      //   setState(() {
                      //     _textInput = value;
                      //   });
                      // },
                      controller: _controller,
                      onSubmitted: (value) {
                        setState(() {
                          _textSend = value;
                        });
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.blue,
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            "Is lifing...",
                            style: style1,
                          ),
                          Text("$_textInput"),
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            "Is send",
                            style: style2,
                          ),
                          Text("$_textSend"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_showIntroduceText);
    _controller.value = TextEditingValue(text: "Initial value");
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showIntroduceText() {
    setState(() {
      _textInput = _controller.text;
    });
  }
}
