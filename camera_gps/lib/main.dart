import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CameraGps",
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: "CameraGps"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? Key, this.title}) : super(key: Key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  XFile? _imgFile;
  dynamic _pickImgError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: _seeImg(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: (() {
                (ImageSource.gallery);
              }),
              child: Icon(Icons.browse_gallery)),
          FloatingActionButton(
              backgroundColor: Colors.cyan,
              onPressed: (() {
                (ImageSource.camera);
              }),
              child: Icon(Icons.camera)),
        ],
      ),
    );
  }

  Widget _seeImg() {
    if (_imgFile != null) {
      return Image.file(File(_imgFile!.path));
    } else if (_pickImgError != null) {
      return Text("Error to see the Img $_pickImgError");
    }else{
      return Text("NO existe the Img");
    }
    return Container();
  }

  void _onImgButtonPressed(ImageSource, source) async {
    try {
      _imgFile = await ImagePicker().pickImage(source: source);
      setState(() {});
    } catch (e) {
      _pickImgError = e;
    }
  }
}
