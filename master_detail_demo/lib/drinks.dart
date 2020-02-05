class Drink {
  String name;
  int quantity;
  Drink({this.name = 'Dr. Pepper', this.quantity = 1});

  @override
  String toString(){return '$name ($quantity)';}
}

var inventory = [Drink(), Drink(), Drink()];