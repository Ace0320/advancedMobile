//Author: Kenny Grannas
//Last Edit: 2/13/0220

import 'dart:math';
// 1a)
class Player {
  String name;
  int score;
  int healthPoints;

// 1b)
  Player(this.name, this.score, this.healthPoints);

// 1c)
  Player.boss(){
    name = 'Boss';
    score = 0;
    healthPoints = 1000;
  }

// 1d)
  @override
  String toString() => 'Name: $name, Score: $score, HealthPoints: $healthPoints';

// 1e)
  void addScoreBy(numToAdd){
    if(numToAdd>=0){
      score += numToAdd;
    }
  }
}

// 1a)
class GameSimulator{
  int winningScore = 0;
  List<Player> players = [];
  GameSimulator({this.winningScore});

// 1c)
  Player playGame({numPlayers = 4}){
    //Create variables
    Player winner;
    var noWinner = true;
    var rnd = Random();
    var names =  ['Beyonce', 'Elvis Presley', 'Lady Gaga', 'Ariana Grande', 'Adele', 'Taylor Swift'];

    //For loop to create players
    for(var i = 0; i < numPlayers; i++){
      var nameNum = rnd.nextInt(6);
      var player1 = Player(names[nameNum], 0, 100);
      players.add(player1);
    }

    // While loop to go until winner
    while(noWinner){
      // increase the score of each player then check if ther is a winner
      for(var i in players){
        i.addScoreBy(rnd.nextInt((winningScore/2).round()));
        if(i.score >= winningScore){
          winner = i;
          noWinner = false;
        }
      }
    }


    return winner;
  }

}