import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: SampleAppPage(),
    );
  }
}


class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: RaisedButton(onPressed: (){
        print('click');
      }, 
      child: Text('Button'),)
    );
  }

}