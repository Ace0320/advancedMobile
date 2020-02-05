import 'package:flutter/material.dart';
import 'drinks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MasterPage(),
    );
  }
}

class MasterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Master Page')),
        body: ListView.separated(
          itemCount: inventory.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(drink: inventory[index])));
              },
              title: Text('$index'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }
}

class DetailPage extends StatelessWidget {
  final Drink drink;

  DetailPage({this.drink});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Drink Details')),
        body: Center(
          child: Text(
            '${drink.name}',
            style: TextStyle(fontSize: 50, color: Colors.amber),
          ),
          
        ));
  }
}
