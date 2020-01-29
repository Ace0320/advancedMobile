import 'package:flutter/material.dart';

class Australia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('How about those chiefs?')),
      body:Container(
        alignment: Alignment.center,
        color: Colors.blue[50],
        child: Text(
          'G\'day, mate!',
          textAlign: TextAlign.center,
        )));
  }
}
