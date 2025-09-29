import 'package:oop06/animal.dart';

void main() {
  var goldy = Goldfish();
  var tweety = Bird();

  goldy.move();
  goldy.makeSound();
  goldy.breatheUnderWater();

  tweety.move();
  tweety.makeSound();
  tweety.walk();
}
