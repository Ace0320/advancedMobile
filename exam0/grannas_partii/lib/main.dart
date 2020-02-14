// Author: Kenny Grannas
// Last Edit: 2/13/2020

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Fine and Noble Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('A Fine and Noble Quiz'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                    child: Text(
                      "A Querulous Quiz",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40),
                    ))),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Text(
                      "Question: What is the meaning of life?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ))),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                    child: CheckboxListTile(
                      title: Text(
                        'a) Hello',
                        style: TextStyle(color: Colors.black.withOpacity(1.0)),
                      ),
                      value: false,
                      onChanged: null,
                      controlAffinity: ListTileControlAffinity.leading,
                    ))),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                    child: CheckboxListTile(
                      title: Text(
                        'a) 42',
                        style: TextStyle(color: Colors.black.withOpacity(1.0)),
                      ),
                      value: false,
                      onChanged: null,
                      controlAffinity: ListTileControlAffinity.leading,
                    ))),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                    child: CheckboxListTile(
                      title: Text(
                        'a) 46',
                        style: TextStyle(color: Colors.black.withOpacity(1.0)),
                      ),
                      value: false,
                      onChanged: null,
                      controlAffinity: ListTileControlAffinity.leading,
                    ))),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                    child: ButtonTheme(
                      minWidth: 400,
                      buttonColor: Colors.yellow[600],
              child: RaisedButton(
              onPressed: () {}, child: Text('Submit', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white))),
            ))),
          ],
        ),
      ),
    );
  }
}
