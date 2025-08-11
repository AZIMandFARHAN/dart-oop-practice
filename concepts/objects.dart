void main() {
  Car car1 = Car("Honda", 2021);
  Car car2 = Car("BMW", 2023);

  car1.display();
  car2.display();
}

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void display() {
    print("Brand: $brand, Year: $year");
  }
}
