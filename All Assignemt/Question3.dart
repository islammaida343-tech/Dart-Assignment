import 'dart:math';
// 1. Write a program in Dart to print your own name using function.
/*
void printName() {
  print("Shadman");
}
void question1() {
  printName();
}
*/

// 2. Write a program in Dart to print even numbers between
// intervals using function.
/*
void printEvenNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void question2() {
  printEvenNumbers(1, 20);
}
*/
// 3. Create a function called greet that takes a name as an
// argument and prints a greeting message.
/*
void greet(String name) {
  print("Hello, $name");
}
void question3() {
  greet("John");
}
*/
// 4. Write a program in Dart that generates random password.
/*
String generatePassword(int length) {
  const characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghi";
  Random random = Random();
  String password = "";
  for (int i = 0; i < length; i++) {
    password += characters[random.nextInt(characters.length)];
  }
  return password;
}
void question4() {
  print("Random Password: ${generatePassword(8)}");
}
/*
// 5. Write a program in Dart to find the area of a circle
// using function.
/*
double circleArea(double radius) {
  return pi * radius * radius;
}
void question5() {
  print("Area of Circle: ${circleArea(5)}");
}
*/

// 6. Write a program in Dart to reverse a String using function.
/*
String reverseString(String text) {
  return text.split('').reversed.join('');
}
void question6() {
  print("Reversed String: ${reverseString("Dart")}");
}
*/

// 7. Write a program in Dart to calculate power of a certain
/*
num calculatePower(num base, int exponent) {
  return pow(base, exponent);
}
void question7() {
  print("5^3 = ${calculatePower(5, 3)}");
}
*/

// 8. Write a function in Dart named add that takes two numbers
// as arguments and returns their sum.
/*
num add(num a, num b) {
  return a + b;
}
void question8() {
  print("Sum: ${add(10, 20)}");
}
*/

// ============================================================
// 9. Write a function in Dart called maxNumber that takes three
// numbers as arguments and returns the largest number.
/*
num maxNumber(num a, num b, num c) {
  num largest = a;
  if (b > largest) {
    largest = b;
  }
  if (c > largest) {
    largest = c;
  }
  return largest;
}
void question9() {
  print("Largest Number: ${maxNumber(10, 25, 15)}");
}
*/
// 10. Write a function in Dart called isEven that takes a number
// as an argument and returns True if the number is even,
// and False otherwise.
/*
bool isEven(int number) {
  return number % 2 == 0;
}

void question10() {
  print("Is 10 even? ${isEven(10)}");
}
/*
// 11. Write a function in Dart called createUser with parameters
// name, age, and isActive, where isActive has a default value
// of true.
/*
void createUser(String name, int age, {bool isActive = true}) {
  print("Name: $name");
  print("Age: $age");
  print("Active: $isActive");
}
void question11() {
  createUser("Shadman", 22);
}
*/

// 12. Write a function in Dart called calculateArea that
// calculates the area of a rectangle. It should take length
// and width as arguments, with a default value of 1 for both.
/*
num calculateArea({num length = 1, num width = 1}) {
  return length * width;
}
void question12() {
  print("Rectangle Area: ${calculateArea(length: 10, width: 5)}");
}
void main() {
  print("\nQuestion 1");
  question1();
  print("\nQuestion 2");
  question2();
  print("\nQuestion 3");
  question3();
  print("\nQuestion 4");
  question4();
  print("\nQuestion 5");
  question5();
  print("\nQuestion 6");
  question6();
  print("\nQuestion 7");
  question7();
  print("\nQuestion 8");
  question8();
  print("\nQuestion 9");
  question9();
  print("\nQuestion 10");
  question10();
  print("\nQuestion 11");
  question11();
  print("\nQuestion 12");
  question12();
}
*/