class Vehicle {
  void move() {
    print("Vehicle is moving");
  }
}

class Car extends Vehicle {
  void honk() {
    print("Car honks!");
  }
}

void main() {
  Car myCar = Car();
  myCar.move();
  myCar.honk();
}
