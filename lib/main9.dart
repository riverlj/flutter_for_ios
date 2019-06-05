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
  List<Widget> widgets = [];

  @override
  void initState() {
    // TODO: implement initState
    for (int i=0; i<100; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
          itemBuilder: (BuildContext context, int position) {
            return getRow(position);
          }
      )
    );
  }

  getRow(int i) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("Row $i")
      ),
      onTap: () {
        setState(() {
          widgets = List.from(widgets);
          widgets.add(getRow(widgets.length + 1));
          print('Row $i');
        });
      },
    );
  }
}