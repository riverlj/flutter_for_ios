import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
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
  int _pressedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
      ),
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            setState(() {
              _pressedCount += 1;
            });
          },
          child: Text('Hello' + _pressedCount.toString()),
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
      ),
    );
  }
}
