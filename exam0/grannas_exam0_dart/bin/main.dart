//Author: Kenny Grannas
//Last Edit: 2/13/0220

import 'package:grannas_exam0_dart/grannas_exam0_dart.dart'
    as grannas_exam0_dart;
import 'dart:math';

import 'game.dart';

void main(List<String> arguments) {
  //0a)
  print(randomList(length: 10, from: 1, to: 6));
  //0b)
  print(randomList(length: 10, from: 6, to: 1));
  //0c)
  print(randomList());

  // 1d)
  var game = GameSimulator(winningScore: 100);
  var winner = game.playGame(numPlayers: 4);
  print('Congratulations, ${winner.name}, you won');
}

// 0
List randomList({length = 5, from = 1, to = 6}) {
  //creating answer list to return and other variables to be used later
  var answer = List();
  var rnd = Random();

  if (from > to || length < 0 || to < 0 || from < 0) {
    return null;
  } else {
    //creates the random numbers and adds to the list
    for (var i = 0; i < length; i++) {
      answer.add(from + rnd.nextInt((to+1) - from)); //Plus one to make inclusive
    }
  }

  //return to sender
  return answer;
}
