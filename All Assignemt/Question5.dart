/*
import 'dart:io';
// 1. Write a dart program to add your name to “hello.txt” file.
void question1() {
  File file = File("hello.txt");
  file.writeAsStringSync("Mayda");
  print("Name added to hello.txt");
}

// 2. Write a dart program to append your friends name to a file
// that already has your name.
void question2() {
  File file = File("hello.txt");
  file.writeAsStringSync(
    "\nRahim\nKarim\nHasan",
    mode: FileMode.append,
  );
  print("Friends' names added to hello.txt");
}

// 3. Write a dart program to get the current working directory.
void question3() {
  Directory currentDirectory = Directory.current;
  print("Current Working Directory:");
  print(currentDirectory.path);
}

// 4. Write a dart program to copy the “hello.txt” file to
// “hello_copy.txt” file.

void question4() {
  File sourceFile = File("hello.txt");

  if (sourceFile.existsSync()) {
    sourceFile.copySync("hello_copy.txt");

    print("hello.txt copied to hello_copy.txt");
  } else {
    print("hello.txt does not exist.");
  }
}

// 5. Write a dart program to create 100 files using loop.
void question5() {
  for (int i = 1; i <= 100; i++) {
    File file = File("file_$i.txt");
    file.writeAsStringSync("This is file number $i");
  }
  print("100 files created successfully.");
}

// 6. Write a dart program to delete the file “hello_copy.txt”.
// Make sure you have created the file “hello_copy.txt”.

void question6() {
  File file = File("hello_copy.txt");
  if (file.existsSync()) {
    file.deleteSync();
    print("hello_copy.txt deleted successfully.");
  } else {
    print("hello_copy.txt does not exist.");
  }
}

// 7. Write a dart program to store name, age, and address of
// students in a CSV file and read it.

void question7() {
  File file = File("students.csv");
  String data = """
Name,Age,Address
Shadman,22,Sylhet
Rahim,21,Dhaka
Karim,23,Chittagong
Hasan,20,Rajshahi
""";
  file.writeAsStringSync(data);
  print("Student data written to students.csv");
  String content = file.readAsStringSync();
  print("\nStudent Data:");
  print(content);
}
void main() {
  print("\nQUESTION 1");
  question1();
  print("\nQUESTION 2");
  question2();
  print("\nQUESTION 3");
  question3();
  print("\nQUESTION 4");
  question4();
  print("\nQUESTION 5");
  question5();
  print("\nQUESTION 6");
  question6();
  print("\nQUESTION 7");
  question7();
  print("\nQUESTION 8");
  question8();
}
*/
