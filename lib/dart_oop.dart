import 'dart:math';

// Functions
void printMyName() {
  print("My nickname is Pop");
}

int getCurrentYear() {
  return 2024;
}

int multiply(int a, int b) {
  return a * b;
}

void sayGoodbye() => print("Goodbye!");

void showUserDetails({String? name, int? age}) {
  print("Name: $name, Age: $age");
}

void greet({required String name, String greeting = "Hello"}) {
  print("$greeting, $name");
}

void showUserDetailsRequired({required String name, int? age}) {
  print("Name: $name, Age: $age");
}

bool isEven(int number) => number % 2 == 0;

void logMessage(String message, [String level = "INFO"]) {
  print("[$level] $message");
}

void processNumbers(List<int> list, Function(int) action) {
  for (var number in list) {
    action(number);
  }
}

void printSquare(int n) {
  print("Square of $n is ${n * n}");
}

// OOP Part 1
class Car {
  String? color;
  int? year;
  static const int numberOfWheels = 4;

  void drive() {
    print("Driving the $color car...");
  }
}

class Book {
  final String title;
  final int pages;
  Book({required this.title, required this.pages});
}

class MathHelper {
  static int add(int a, int b) => a + b;
}

class User {
  String username;
  User(this.username);
  User.guest() : username = "Guest";
}

class Circle {
  final double radius;
  Circle(this.radius);
  double get area => pi * radius * radius;
}

class BankAccount {
  double _balance = 0;
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
  double get balance => _balance;
}

class DatabaseConnection {
  static int connectionCount = 0;
  DatabaseConnection() {
    connectionCount++;
  }
}

// OOP Part 2
class Vehicle {
  void move() {
    print("Moving...");
  }
}

class Car2 extends Vehicle {
  @override
  void move() {
    print("Driving the car...");
  }
}

enum TrafficLight {
  red,
  yellow,
  green
}

mixin Flyer {
  void fly() {
    print("I am flying!");
  }
}

class Bird with Flyer {}

class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int studentId;
  Student(String name, this.studentId) : super(name);
}

abstract class Database {
  void connect();
}

class MySQLDatabase extends Database {
  @override
  void connect() {
    print("Connecting to MySQL...");
  }
}

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print("LOG: $message");
  }
}

class Animal {
  void eat() {
    print("Animal is eating.");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    super.eat();
    print("Dog is eating bones.");
  }
}

mixin Walker {
  void walk() {
    print("Walking...");
  }
}

mixin Swimmer {
  void swim() {
    print("Swimming...");
  }
}

class Duck with Walker, Swimmer {}

void checkLight(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      print("STOP");
      break;
    case TrafficLight.yellow:
      print("WAIT");
      break;
    case TrafficLight.green:
      print("GO");
      break;
  }
}

abstract class Shape {
  String color;
  Shape(this.color);
  double getArea();
}

class CircleShape extends Shape {
  double radius;
  CircleShape(this.radius, String color) : super(color);

  @override
  double getArea() {
    return pi * radius * radius;
  }
}

void main() {
  // Collections
  print("\n=== Collections ===");
  print("\nข้อที่ 1");
  List<String> animals = ["Tiger", "Lion", "Cat"]; 
  print(animals[1]);

  print("\nข้อที่ 2");
  animals.add("Dog");
  print(animals);

  print("\nข้อที่ 3");
  print("จำนวนสมาชิกใน List animals คือ: ${animals.length}");

  print("\nข้อที่ 4");
  Map<String, int> studentScore = {
    "math": 90,
    "english": 85
  };
  print("คะแนนวิชา math คือ: ${studentScore["math"]}");

  print("\nข้อที่ 5");
  Set<int> uniqueNumbers = Set<int>.from([10, 20, 10, 30, 20]);
  print("ค่าใน Set uniqueNumbers คือ: $uniqueNumbers");

  print("\nข้อที่ 6");
  List<String> colors = ["Red", "Green", "Blue"];
  print("List colors ก่อนลบ: $colors");
  colors.removeAt(1);
  print("List colors หลังลบ: $colors");

  print("\nข้อที่ 7");
  List<int> numbers = [5, 10, 15, 10];
  int index = numbers.indexOf(10);
  print("เลข 10 อยู่ที่ index: $index");

  print("\nข้อที่ 8");
  List<String> names = [];
  names.add("John");
  print("หลังเพิ่ม String: $names");
  // names.add(123);  // Error: The argument type 'int' can't be assigned to the parameter type 'String'

  print("\nข้อที่ 9");
  for (String animal in animals) {
    print("Animal: $animal");
  }

  print("\nข้อที่ 10");
  bool hasScience = studentScore.containsKey("science");
  print("studentScore มี key 'science' หรือไม่: $hasScience");

  print("\nข้อที่ 11");
  List<int> listA = [1, 2];
  List<int> listB = [3, 4];
  List<int> combined = [0, ...listA, ...listB, 5];
  print("Combined list: $combined");

  print("\nข้อที่ 12");
  bool isPremiumUser = false;
  List<String> features = [
    "Basic Feature",
    if (isPremiumUser) "Premium Feature",
  ];
  print("Available features: $features");

  print("\nข้อที่ 13");
  List<int> original = [1, 2, 3];
  List<int> squares = [
    for (int number in original) number * number
  ];
  print("Squares: $squares");

  print("\nข้อที่ 14");
  studentScore.forEach((subject, score) {
    print("Subject: $subject, Score: $score");
  });

  print("\nข้อที่ 15");
  print("อธิบาย Set ในข้อ 5:");
  print("Set เป็นโครงสร้างข้อมูลที่เก็บเฉพาะค่าที่ไม่ซ้ำกัน");
  print("เมื่อใส่ข้อมูล [10, 20, 10, 30, 20] ลงใน Set");
  print("- 10 ตัวที่สองถูกละทิ้งเพราะซ้ำกับ 10 ตัวแรก");
  print("- 20 ตัวที่สองถูกละทิ้งเพราะซ้ำกับ 20 ตัวแรก");
  print("จึงเหลือเพียง 3 ค่าที่ไม่ซ้ำกันคือ [10, 20, 30]");

  // Functions
  print("\n=== Functions ===");
  print("\nข้อที่ 1");
  printMyName();

  print("\nข้อที่ 2");
  int year = getCurrentYear();
  print("Current year: $year");

  print("\nข้อที่ 3, 5");
  int result = multiply(10, 5);
  print("10 x 5 = $result");

  print("\nข้อที่ 4");
  sayGoodbye();

  print("\nข้อที่ 6, 7");
  showUserDetails(name: "David", age: 30);

  print("\nข้อที่ 8");
  greet(name: "Alice");
  greet(name: "Bob", greeting: "Hi");

  print("\nข้อที่ 9");
  showUserDetailsRequired(name: "John", age: 25);

  print("\nข้อที่ 10");
  List<int> numbersList = [1, 2, 3];
  numbersList.forEach((number) {
    print("Number: $number");
  });

  print("\nข้อที่ 11");
  print("Is 4 even? ${isEven(4)}");
  print("Is 7 even? ${isEven(7)}");

  print("\nข้อที่ 12");
  logMessage("Error found");
  logMessage("Critical error", "ERROR");

  print("\nข้อที่ 13, 14");
  processNumbers([1, 2, 3], printSquare);

  print("\nข้อที่ 15");
  processNumbers([10, 20], (number) {
    print("Value: $number");
  });

  // OOP Part 1
  print("\n=== OOP Part 1 ===");
  print("\nข้อที่ 1");
  Car myCar1 = Car();
  print("Created empty Car object");

  print("\nข้อที่ 2");
  Car myCar2 = Car();
  myCar2.color = "Red";
  print("Car color: ${myCar2.color}");

  print("\nข้อที่ 3, 4");
  Car myCar3 = Car();
  myCar3.color = "Blue";
  myCar3.drive();

  print("\nข้อที่ 5");
  print("Number of wheels: ${Car.numberOfWheels}");

  print("\nข้อที่ 6, 7");
  Book myBook = Book(title: "Dart Basics", pages: 200);
  print("Book: ${myBook.title}, Pages: ${myBook.pages}");

  print("\nข้อที่ 8, 9");
  int sum = MathHelper.add(15, 30);
  print("15 + 30 = $sum");

  print("\nข้อที่ 10");
  User guestUser = User.guest();
  print("Username: ${guestUser.username}");

  print("\nข้อที่ 11");
  Circle circle = Circle(5.0);
  print("Circle area: ${circle.area}");

  print("\nข้อที่ 12, 13, 14");
  BankAccount myAccount = BankAccount();
  myAccount.deposit = 100;  // Should work
  myAccount.deposit = -50;  // Should not work
  print("Balance: ${myAccount.balance}"); // Expected: 100.0

  print("\nข้อที่ 15");
  DatabaseConnection();
  DatabaseConnection();
  DatabaseConnection();
  print("Total connections: ${DatabaseConnection.connectionCount}"); // Expected: 3

  // OOP Part 2
  print("\n=== OOP Part 2 ===");
  print("\nข้อที่ 1, 2, 3");
  Car2 myCar = Car2();
  myCar.move();

  print("\nข้อที่ 4");
  var light = TrafficLight.red;
  print("Traffic light: $light");

  print("\nข้อที่ 5");
  Bird bird = Bird();
  bird.fly();

  print("\nข้อที่ 6");
  Student student = Student("John", 12345);
  print("Student: ${student.name}, ID: ${student.studentId}");

  print("\nข้อที่ 7");
  print("ไม่สามารถสร้าง object จาก abstract class ได้โดยตรง");
  // var db = Database();  // Error: Cannot instantiate abstract class

  print("\nข้อที่ 8, 9");
  MySQLDatabase mysql = MySQLDatabase();
  mysql.connect();

  print("\nข้อที่ 10");
  ConsoleLogger logger = ConsoleLogger();
  logger.log("Test message");

  print("\nข้อที่ 11");
  Dog dog = Dog();
  dog.eat();

  print("\nข้อที่ 12");
  print("extends vs implements:");
  print("1. extends: สืบทอดทั้งคุณสมบัติและการทำงานจากคลาสแม่");
  print("2. implements: บังคับให้คลาสต้องมีเมธอดตาม interface แต่ต้องเขียนโค้ดใหม่ทั้งหมด");

  print("\nข้อที่ 13");
  Duck duck = Duck();
  duck.walk();
  duck.swim();

  print("\nข้อที่ 14");
  checkLight(TrafficLight.red);
  checkLight(TrafficLight.yellow);
  checkLight(TrafficLight.green);

  print("\nข้อที่ 15");
  CircleShape circleShape = CircleShape(5.0, "Blue");
  print("Circle area: ${circleShape.getArea()}, Color: ${circleShape.color}");
}