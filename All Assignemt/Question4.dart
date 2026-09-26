/*
// 1. Create a list of names and print all names using list.
void question1() {
  List<String> names = ["Mayda", "Rahim", "Karim", "Hasan"];
  for (String name in names) {
    print(name);
  }
}

// 2. Create a set of fruits and print all fruits using loop.
void question2() {
  Set<String> fruits = {"Apple", "Mango", "Banana", "Orange"};
  for (String fruit in fruits) {
    print(fruit);
  }
}

// 3. Create a program that reads list of expenses amount
// using user input and print total.
import 'dart:io';
void question3() {
  print("Enter expenses separated by spaces:");
  String input = stdin.readLineSync()!;
  List<double> expenses =
      input.split(' ').map((e) => double.parse(e)).toList();
  double total = 0;
  for (double expense in expenses) {
    total += expense;
  }
  print("Total Expense: $total");
}

// 4. Create an empty list of type string called days.
// Use the add method to add names of 7 days and print all days.
void question4() {
  List<String> days = [];
  days.add("Saturday");
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  for (String day in days) {
    print(day);
  }
}

// 5. Add your 7 friend names to the list.
// Use where to find a name that starts with alphabet A.
void question5() {
  List<String> friends = [
    "Mayda",
    "Arham",
    "Rahim",
    "Anik",
    "Karim",
    "Abir",
    "Hasan"
  ];
  var result = friends.where(
    (name) => name.toLowerCase().startsWith("a"),
  );
  print("Names starting with A:");
  for (String name in result) {
    print(name);
  }
}

// 6. Create a map with name, address, age, country keys
// and store values to it. Update country name to another
// country and print all keys and values.
void question6() {
  Map<String, dynamic> person = {
    "name": "Mayda",
    "address": "Sylhet",
    "age": 22,
    "country": "Bangladesh"
  };
  person["country"] = "Canada";
  person.forEach((key, value) {
    print("$key : $value");
  });
}

// 7. Create a map with name, phone keys and store some values
// to it. Use where to find all keys that have length 4.
void question7() {
  Map<String, String> contacts = {
    "name": "Mayda",
    "phone": "01712345678",
    "city": "Sylhet",
    "email": "sallu@gmail.com"
  };
  var result = contacts.keys.where(
    (key) => key.length == 4,
  );
  print("Keys with length 4:");
  for (String key in result) {
    print(key);
  }
}
// 8. Create a simple to-do application that allows user to
// add, remove, and view their task.
void question8() {
  List<String> tasks = [];
  while (true) {
    print("\n===== TO-DO APPLICATION =====");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync()!;
    if (choice == "1") {
      stdout.write("Enter task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);

      print("Task added successfully!");
    }
    else if (choice == "2") {
      if (tasks.isEmpty) {
        print("No tasks available.");
      } else {
        print("Your tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
        stdout.write("Enter task number to remove: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 1 && index <= tasks.length) {
          tasks.removeAt(index - 1);
          print("Task removed successfully!");
        } else {
          print("Invalid task number.");
        }
      }
    }
    else if (choice == "3") {
      if (tasks.isEmpty) {
        print("No tasks available.");
      } else {
        print("\nYour Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    }
    else if (choice == "4") {
      print("Goodbye!");
      break;
    }
    else {
      print("Invalid choice!");
    }
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
