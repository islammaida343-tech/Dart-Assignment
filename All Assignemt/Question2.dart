//1. Check Odd or Even
import 'dart:io';

/*
void main() {
  int n = int.parse(stdin.readLineSync()!);

  if (n % 2 == 0)
    print("Even");
  else
    print("Odd");
}
*/

//2. Check Vowel or Consonant
/*
void main() {
  String ch = stdin.readLineSync()!;

  if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ||
      ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U')
    print("Vowel");
  else
    print("Consonant");
}
*/

// 3. Positive, Negative or Zero
/*
void main() {
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0)
    print("Positive");
  else if (n < 0)
    print("Negative");
  else
    print("Zero");
}
*/

// 4. Print Name 100 Times
/*
void main() {
  for (int i = 1; i <= 100; i++) { 
    print("Shadman");
  }
}
*/

// 5. Sum of Natural Numbers
/*
void main() {
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    sum += i;
  }

  print(sum);
}
*/
// 6. Multiplication Table of 5
/*
void main() {
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }
}
*/

// 7. Multiplication Tables of 1-9
/*
void main() {
  for (int i = 1; i <= 9; i++) {
    print("Table of $i");

    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }

    print("");
  }
}
*/

// 8. Simple Calculator
/*
void main() {
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);

  print("Add = ${a + b}");
  print("Sub = ${a - b}");
  print("Mul = ${a * b}");
  print("Div = ${a / b}");
}
*/

// 9. Print 1 to 100 but not 41
/*
void main() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) continue;
    print(i);
  }
}
*/
