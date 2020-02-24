// Author: Kenny Grannas
// Last Edit: 2/13/2020

import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ['Write ATMiC exam', 'Write MC-iOS exam', 'Go flying'];

  void _addItem() {
    setState(() {
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'To-Do LIst',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) => Container(
                  color: Colors.green[10],
                  child: Column(children: <Widget>[
                    ListTile(title: Text(items[index])),
                  ])),
            )),
          ],
        ),
      ),
    );
  }
}
