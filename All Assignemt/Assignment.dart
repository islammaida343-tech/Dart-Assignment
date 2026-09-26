/*
import 'dart:math';

// 1. Create a Student class with attributes name, id, and cgpa. Create an object and display its information.
class Student1 {
  String name;
  int id;
  double cgpa;
  Student1(this.name, this.id, this.cgpa);
  void display() => print("Name: $name, ID: $id, CGPA: $cgpa");
}

void q1() {
  Student1 s = Student1("Mayda", 101, 3.75);
  s.display();
}

// 2. Create a Rectangle class with length and width, and write methods to calculate area and perimeter. Initialize its properties using a parameterized constructor. Create object and call the methods.
class Rectangle2 {
  double length, width;
  Rectangle2(this.length, this.width);
  double area() => length * width;
  double perimeter() => 2 * (length + width);
}

void q2() {
  Rectangle2 r = Rectangle2(10, 5);
  print("Area: ${r.area()}");
  print("Perimeter: ${r.perimeter()}");
}

// 3. Create a Book class with properties title, subtitle, and author. Initialize its properties using a parameterized constructor and display information.
class Book3 {
  String title, subtitle, author;
  Book3(this.title, this.subtitle, this.author);
  void display() => print("$title | $subtitle | $author");
}

void q3() {
  Book3 b = Book3("Dart", "Programming", "Mayda");
  b.display();
}

// 4. Create a Car class with a named constructor Car.manual() and Car.automatic() that prints a message.
class Car4 {
  Car4.manual() {
    print("Manual car created");
  }
  Car4.automatic() {
    print("Automatic car created");
  }
}

void q4() {
  Car4.manual();
  Car4.automatic();
}

// 5. Create a Customer class with final fields and initialize them using a const constructor.
class Customer5 {
  final String name;
  final int id;
  const Customer5(this.name, this.id);
  void display() => print("Name: $name, ID: $id");
}

void q5() {
  const Customer5 c = Customer5("Shadman", 101);
  c.display();
}

// 6. Create a BankAccount class with deposit() and withdraw() methods with their functionalities. Test the methods using objects.
class BankAccount6 {
  double balance;
  BankAccount6(this.balance);
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }
}

void q6() {
  BankAccount6 b = BankAccount6(1000);
  b.deposit(500);
  b.withdraw(300);
  print("Balance: ${b.balance}");
}

// 7. Create a MathHelper class containing only static methods for addition and multiplication.
class MathHelper7 {
  static int add(int a, int b) => a + b;
  static int multiply(int a, int b) => a * b;
}

void q7() {
  print("Addition: ${MathHelper7.add(10, 20)}");
  print("Multiplication: ${MathHelper7.multiply(10, 20)}");
}

// 8. Create Employee class with attributes name, designation, and salary. Initialize its properties using a parameterized constructor. Create three objects of the class and store them in a list. Display all employee details using a loop.
class Employee8 {
  String name, designation;
  double salary;
  Employee8(this.name, this.designation, this.salary);
}

void q8() {
  List<Employee8> employees = [
    Employee8("Shadman", "Developer", 50000),
    Employee8("Rahim", "Manager", 70000),
    Employee8("Karim", "Designer", 45000),
  ];
  for (var e in employees) {
    print("${e.name} | ${e.designation} | ${e.salary}");
  }
}

// 9. Create a Temperature class with attribute temp which is a private variable. Use a setter to initialize the temp with Celsius value and create a getter that returns the equivalent temperature in Fahrenheit.
class Temperature9 {
  double _temp = 0;
  set temp(double celsius) => _temp = celsius;
  double get fahrenheit => (_temp * 9 / 5) + 32;
}

void q9() {
  Temperature9 t = Temperature9();
  t.temp = 25;
  print("Fahrenheit: ${t.fahrenheit}");
}

// 10. Create a BankAccount class where the balance is private and cannot be negative. Create setter and getter methods.
class BankAccount10 {
  double _balance = 0;
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    }
  }

  double get balance => _balance;
}

void q10() {
  BankAccount10 b = BankAccount10();
  b.balance = 1000;
  print("Balance: ${b.balance}");
}

// 11. Create a Person class with a displayInfo() method and override it in Teacher and Student class and give their own implementation. Create object and call them.
class Person11 {
  void displayInfo() => print("I am a person");
}

class Teacher11 extends Person11 {
  @override
  void displayInfo() => print("I am a teacher");
}

class Student11 extends Person11 {
  @override
  void displayInfo() => print("I am a student");
}

void q11() {
  Person11 p1 = Teacher11();
  Person11 p2 = Student11();
  p1.displayInfo();
  p2.displayInfo();
}

// 12. Create a Person superclass and an Employee subclass that adds salary information.
class Person12 {
  String name;
  Person12(this.name);
}

class Employee12 extends Person12 {
  double salary;
  Employee12(String name, this.salary) : super(name);
  void display() => print("Name: $name, Salary: $salary");
}

void q12() {
  Employee12 e = Employee12("Mayda", 50000);
  e.display();
}

// 13. Create a Shape superclass and derive Rectangle and Circle classes with their own area methods.
class Shape13 {
  double area() => 0;
}

class Rectangle13 extends Shape13 {
  double length, width;
  Rectangle13(this.length, this.width);
  @override
  double area() => length * width;
}

class Circle13 extends Shape13 {
  double radius;
  Circle13(this.radius);
  @override
  double area() => pi * radius * radius;
}

void q13() {
  Shape13 r = Rectangle13(10, 5);
  Shape13 c = Circle13(5);
  print("Rectangle Area: ${r.area()}");
  print("Circle Area: ${c.area()}");
}

// 14. Create a Notification base class and create a displayNotification() that returns notification message. Create two child class of Notification: EmailNotification and SMSNotification classes and override the method.
class Notification14 {
  String displayNotification() => "Notification";
}

class EmailNotification14 extends Notification14 {
  @override
  String displayNotification() => "Email notification";
}

class SMSNotification14 extends Notification14 {
  @override
  String displayNotification() => "SMS notification";
}

void q14() {
  Notification14 n1 = EmailNotification14();
  Notification14 n2 = SMSNotification14();
  print(n1.displayNotification());
  print(n2.displayNotification());
}

// 15. Create an abstract class Shape containing an abstract calculateArea() method. Implement it in Square.
abstract class Shape15 {
  double calculateArea();
}

class Square15 extends Shape15 {
  double side;
  Square15(this.side);
  @override
  double calculateArea() => side * side;
}

void q15() {
  Shape15 s = Square15(5);
  print("Square Area: ${s.calculateArea()}");
}

// 16. Create an abstract class Appliance with methods turnOn() and turnOff(). Implement them in Fan.
abstract class Appliance16 {
  void turnOn();
  void turnOff();
}

class Fan16 extends Appliance16 {
  @override
  void turnOn() => print("Fan is ON");
  @override
  void turnOff() => print("Fan is OFF");
}

void q16() {
  Fan16 f = Fan16();
  f.turnOn();
  f.turnOff();
}

// 17. Create an interface-like class Playable and implement it in Football and Cricket.
class Playable17 {
  void play() {}
}

class Football17 implements Playable17 {
  @override
  void play() => print("Playing Football");
}

class Cricket17 implements Playable17 {
  @override
  void play() => print("Playing Cricket");
}

void q17() {
  Playable17 f = Football17();
  Playable17 c = Cricket17();
  f.play();
  c.play();
}

// 18. Implement multiple interfaces: Flyable and Swimmable in a Duck class.
class Flyable18 {
  void fly() {}
}

class Swimmable18 {
  void swim() {}
}

class Duck18 implements Flyable18, Swimmable18 {
  @override
  void fly() => print("Duck is flying");
  @override
  void swim() => print("Duck is swimming");
}

void q18() {
  Duck18 d = Duck18();
  d.fly();
  d.swim();
}

// 19. Create an abstract Payment class and implement CashPayment and CardPayment.
abstract class Payment19 {
  void pay(double amount);
}

class CashPayment19 implements Payment19 {
  @override
  void pay(double amount) => print("Paid $amount by cash");
}

class CardPayment19 implements Payment19 {
  @override
  void pay(double amount) => print("Paid $amount by card");
}

void q19() {
  Payment19 p1 = CashPayment19();
  Payment19 p2 = CardPayment19();
  p1.pay(500);
  p2.pay(1000);
}

// 20. Create a method named toCapitalized() that capitalizes the first letter.
String toCapitalized(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}

void q20() {
  print(toCapitalized("dart programming"));
}

// 21. Create an enum OrderStatus with values pending, shipped, and delivered. Display different messages for each status.
enum OrderStatus21 { pending, shipped, delivered }

void q21() {
  for (var status in OrderStatus21.values) {
    switch (status) {
      case OrderStatus21.pending:
        print("Order is pending");
        break;
      case OrderStatus21.shipped:
        print("Order has been shipped");
        break;
      case OrderStatus21.delivered:
        print("Order has been delivered");
        break;
    }
  }
}

// 22. Create a mixin named LoggerMixin that provides a logMessage() method. Use this mixin in both User and Product classes, and demonstrate the shared logging functionality in the main function.
mixin LoggerMixin22 {
  void logMessage(String message) => print("LOG: $message");
}

class User22 with LoggerMixin22 {
  void login() => logMessage("User logged in");
}

class Product22 with LoggerMixin22 {
  void addProduct() => logMessage("Product added");
}

void q22() {
  User22 u = User22();
  Product22 p = Product22();
  u.login();
  p.addProduct();
}

// 23. Create a base class Document and a class-specific mixin Printable using on Document with a display() method. Use the mixin in both Invoice and Report classes, then demonstrate it in main().
class Document23 {
  String title;
  Document23(this.title);
}

mixin Printable23 on Document23 {
  void display() => print("Document: $title");
}

class Invoice23 extends Document23 with Printable23 {
  Invoice23(String title) : super(title);
}

class Report23 extends Document23 with Printable23 {
  Report23(String title) : super(title);
}

void q23() {
  Invoice23 i = Invoice23("Invoice");
  Report23 r = Report23("Report");
  i.display();
  r.display();
}

// 24. Create a generic class Box<T> that can store any data type.
class Box24<T> {
  T value;
  Box24(this.value);
  void display() => print(value);
}

void q24() {
  Box24<int> b1 = Box24(100);
  Box24<String> b2 = Box24("Hello");
  b1.display();
  b2.display();
}

// 25. Create a generic method isEqual<T>() with two parameters that compares two values of the same type and returns true if they are equal else false.
bool isEqual25<T>(T a, T b) {
  return a == b;
}

void q25() {
  print(isEqual25<int>(10, 10));
  print(isEqual25<String>("Dart", "Java"));
}

// 26. Create a generic method findLargest<T extends num>() with two parameters that returns the larger of two numeric values.
T findLargest26<T extends num>(T a, T b) {
  return a > b ? a : b;
}

void q26() {
  print(findLargest26<int>(10, 20));
  print(findLargest26<double>(5.5, 3.2));
}

// 27. Create a Company class with Manager and Developer subclasses and calculate monthly salary differently.
class Company27 {
  String name;
  Company27(this.name);
  double calculateSalary() => 0;
}

class Manager27 extends Company27 {
  double salary;
  Manager27(String name, this.salary) : super(name);
  @override
  double calculateSalary() => salary + 10000;
}

class Developer27 extends Company27 {
  double salary;
  Developer27(String name, this.salary) : super(name);
  @override
  double calculateSalary() => salary + 5000;
}

void q27() {
  Company27 m = Manager27("Manager", 50000);
  Company27 d = Developer27("Developer", 50000);
  print("Manager Salary: ${m.calculateSalary()}");
  print("Developer Salary: ${d.calculateSalary()}");
}

// 28. Design a Hotel Reservation System using Guest, Room, and Reservation classes.
class Guest28 {
  String name;
  Guest28(this.name);
}

class Room28 {
  int roomNo;
  bool available = true;
  Room28(this.roomNo);
}

class Reservation28 {
  Guest28 guest;
  Room28 room;
  Reservation28(this.guest, this.room);
  void reserve() {
    if (room.available) {
      room.available = false;
      print("${guest.name} reserved room ${room.roomNo}");
    } else {
      print("Room is not available");
    }
  }
}

void q28() {
  Guest28 g = Guest28("Mayda");
  Room28 r = Room28(101);
  Reservation28 res = Reservation28(g, r);
  res.reserve();
}

// 29. Design a mini Library Management System using OOP with classes Book, Member, and Library. Include constructors, encapsulation, inheritance (if applicable), and methods for issuing and returning books.
class LibraryBook29 {
  String title;
  bool _issued = false;
  LibraryBook29(this.title);
  bool get issued => _issued;
  void issue() {
    if (!_issued) {
      _issued = true;
      print("$title issued");
    } else {
      print("$title is already issued");
    }
  }

  void returnBook() {
    _issued = false;
    print("$title returned");
  }
}

class Member29 {
  String name;
  Member29(this.name);
}

class Library29 {
  List<LibraryBook29> books;
  Library29(this.books);
  void showBooks() {
    for (var book in books) {
      print("${book.title} - ${book.issued ? "Issued" : "Available"}");
    }
  }
}

void q29() {
  LibraryBook29 b = LibraryBook29("Dart Programming");
  Member29 m = Member29("Mayda");
  Library29 l = Library29([b]);
  print("Member: ${m.name}");
  l.showBooks();
  b.issue();
  l.showBooks();
  b.returnBook();
  l.showBooks();
}

// 30. Design a complete Student Management System with Student, Course, and Enrollment classes demonstrating encapsulation, inheritance, polymorphism, and abstraction.
abstract class Person30 {
  String name;
  Person30(this.name);
  void displayInfo();
}

class Student30 extends Person30 {
  int id;
  List<Course30> courses = [];
  Student30(String name, this.id) : super(name);
  void enroll(Course30 course) {
    courses.add(course);
  }

  @override
  void displayInfo() {
    print("Student: $name, ID: $id");
  }
}

class Course30 {
  String name;
  Course30(this.name);
}

class Enrollment30 {
  Student30 student;
  Course30 course;
  Enrollment30(this.student, this.course);
  void display() {
    print("${student.name} enrolled in ${course.name}");
  }
}

void q30() {
  Student30 s = Student30("Mayda", 101);
  Course30 c = Course30("Dart OOP");
  Enrollment30 e = Enrollment30(s, c);
  s.enroll(c);
  Person30 p = s;
  p.displayInfo();
  e.display();
}

void main() {
  print("\nQuestion 1");
  q1();
  print("\nQuestion 2");
  q2();
  print("\nQuestion 3");
  q3();
  print("\nQuestion 4");
  q4();
  print("\nQuestion 5");
  q5();
  print("\nQuestion 6");
  q6();
  print("\nQuestion 7");
  q7();
  print("\nQuestion 8");
  q8();
  print("\nQuestion 9");
  q9();
  print("\nQuestion 10");
  q10();
  print("\nQuestion 11");
  q11();
  print("\nQuestion 12");
  q12();
  print("\nQuestion 13");
  q13();
  print("\nQuestion 14");
  q14();
  print("\nQuestion 15");
  q15();
  print("\nQuestion 16");
  q16();
  print("\nQuestion 17");
  q17();
  print("\nQuestion 18");
  q18();
  print("\nQuestion 19");
  q19();
  print("\nQuestion 20");
  q20();
  print("\nQuestion 21");
  q21();
  print("\nQuestion 22");
  q22();
  print("\nQuestion 23");
  q23();
  print("\nQuestion 24");
  q24();
  print("\nQuestion 25");
  q25();
  print("\nQuestion 26");
  q26();
  print("\nQuestion 27");
  q27();
  print("\nQuestion 28");
  q28();
  print("\nQuestion 29");
  q29();
  print("\nQuestion 30");
  q30();
}
/*
