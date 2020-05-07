import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade700,
          elevation: 30,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNo = 1;
  var rightNo = 1;

  void changeDie(){
    setState(() {     //rebuild UI again since state has changed
      leftNo = Random().nextInt(6) + 1;
      rightNo = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,                         //size of expanded widget with respect to other expanded widgets
            child: FlatButton(
              child: Image.asset('images/dice$leftNo.png'),
              onPressed: changeDie,
            ),
          ),
          Expanded(
            flex: 1,                         //size of expanded widget with respect to other expanded widgets
            child: FlatButton(child: Image.asset('images/dice$rightNo.png'),
              onPressed: changeDie,
            ),
          ),
        ],
      ),
    );
  }
}

