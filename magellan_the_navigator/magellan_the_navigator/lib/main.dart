import 'package:flutter/material.dart';
import 'australia.dart';
import 'newZealand.dart';

void main() => runApp(MyApp());

class Role {
  String title;
  String actor;
  int birthYear;
  bool starred = false;
  Role({this.title, this.actor, this.birthYear = 1980});
}

var roles = [
  Role(title: "Chidi", actor: "William Jackson Harper", birthYear: 1980),
  Role(title: "Eleanor", actor: "Kristen Bell", birthYear: 1980),
  Role(title: "Jason", actor: "Manny Jacinto", birthYear: 1987),
  Role(title: "Tahini", actor: "Jameela Jamil", birthYear: 1986),
  Role(title: "Michael", actor: "Ted Danson", birthYear: 1947),
];




// // Slide 49
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Flutter Demo',
//         home: HomePage());
//   }
// }

// // Slide 49

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Hello')),
//         body: Center(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           RaisedButton(
//               color: Colors.amber,
//               child: Text(
//                 '=>  Australia',
//                 style: TextStyle(color: Colors.white, fontSize: 48.0),
//               ),
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Australia()));
//               }),
//           RaisedButton(
//               color: Colors.lightBlue[100],
//               child: Text('=> New Zealand',
//                   style: TextStyle(color: Colors.white, fontSize: 48.0)),
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => NewZealand()));
//               }),
//         ])));
//   }
// }






// Slide 52

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: HomePage(),
      routes: {
        '/' : (context) => HomePage(),
        '/Australia' : (context) => Australia(),
        '/NewZealand' : (context) => NewZealand(),
      }
    );
  }
}

// Slide 53

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
              color: Colors.amber,
              child: Text(
                '=>  Australia        ',
                style: TextStyle(color: Colors.white, fontSize: 48.0),
              ),
              onPressed: () {
               Navigator.pushNamed(context, '/Australia');
              }),
          RaisedButton(
              color: Colors.lightBlue[100],
              child: Text('=> New Zealand',
                  style: TextStyle(color: Colors.white, fontSize: 48.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/NewZealand');
              }),
        ])));
  }
}



/* 

// Slide 57

class ActorDetailPage extends StatelessWidget {
  static const routeName = '/actorDetailPage';
  @override
  Widget build(BuildContext context) {
    final Role role = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(title: Text('How about those chiefs?')),
        body: Container(
            alignment: Alignment.center,
            color: Colors.blue[50],
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Spacer(flex: 4),
                  Text(
                    role.actor,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex:2),
                  Text(
                    role.title,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex:2),
                  Text(
                    "${role.birthYear}",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 4),
                ]))));
  }
}

// Slide 58

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
        // home: HomePage(),
        routes: {
          '/': (context) => HomePage(),
          ActorDetailPage.routeName: (context) => ActorDetailPage(),
        });
  }
}


// Slide 59

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
              color: Colors.amber,
              child: Text(
                'Display  Information About Chidi',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 48.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, ActorDetailPage.routeName,
                    arguments: roles[0]);
              }),
        ])));
  }
}

*/


