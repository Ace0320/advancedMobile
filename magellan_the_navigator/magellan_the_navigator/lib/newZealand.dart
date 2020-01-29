import 'package:flutter/material.dart';

class NewZealand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('And those royals?')),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue[50],
        child: Text(
          'Seen any Hobbits around here?',
          textAlign: TextAlign.center,
        )));
  }
}