abstract class Animal {
  void move();
  void makeSound();
}

class Fish extends Animal implements CanBreatheUnderWater {
  @override
  void move() {
    print("Alle Fische schwimmen.");
  }

  @override
  void makeSound() {
    print("Ein Fisch macht keinen besonderen Laut.");
  }

  @override
  void breatheUnderWater() {
    print("Alle Fische atmen unter Wasser");
  }
}

class Goldfish extends Fish {
  @override
  void makeSound() {
    print("blub blub");

    @override
    void breatheUnderWater() {
      print("Goldfisch atmet unter dem Wasser");
    }
  }
}

abstract class CanFly {
  void fly();
}

abstract class CanWalk {
  void walk();
}

abstract class CanBreatheUnderWater {
  void breatheUnderWater();
}

class Bird extends Animal implements CanFly, CanWalk {
  @override
  void move() {
    print("Ein Vögel bewegt sich");
  }

  @override
  void makeSound() {
    print("Vögel singen");
  }

  @override
  void fly() {
    print(" Vögel fliegen");
  }

  @override
  void walk() {
    print("Vögel laufen");
  }
}

void globalFly(Object? obj) {
  if (obj is CanFly) {
    print("Object can fly");
    obj.fly();
  } else {
    print("Object can not fly.");
  }
}
