class Car {
  int currentSpeed = 0;
  static int totalCarNumber = 0;

  void printCurrentSpeed() {
    print(currentSpeed);
  }

  static void printTotalCarNumber(){
    print(totalCarNumber);
  }
}

void main() {
  final firstCar = Car();
  final secondCar = Car();
  firstCar.currentSpeed = 150;
  secondCar.currentSpeed = 120;

  firstCar.printCurrentSpeed();
  secondCar.printCurrentSpeed();

  Car.totalCarNumber = 5;
  Car.printTotalCarNumber();
}
