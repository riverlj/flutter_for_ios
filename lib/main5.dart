import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: (){}, child: Text(label));
  }
}

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home:   CustomButton('hello world')
    );
  }
}
void main() => runApp(MyApp5());