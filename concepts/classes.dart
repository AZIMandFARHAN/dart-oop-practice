class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void display() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  Car c1 = Car("Toyota", 2025);
  c1.display();
}
