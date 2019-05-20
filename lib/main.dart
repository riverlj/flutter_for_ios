import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:   SampleAppPage()
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {

  String textToShow = 'I Like Flutter';
  void _updateText() {
    setState(() {
      textToShow = 'Flutter is Awesome!';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(child: Text(textToShow),),
      floatingActionButton: FloatingActionButton(onPressed: _updateText,
      tooltip: 'updateText',
      child: Icon(Icons.update)),
    );
  }
}