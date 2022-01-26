import 'dart:io';
import 'dart:core';

//Exercice 1
/*void main() {    
    stdout.write("What's your name? ");
    String name = stdin.readLineSync()!;

    print("Hello, $name! What is your age?");
    int age = int.parse(stdin.readLineSync()!);

    int yearsToHunderd = 100 - age;
    print("$name, You have $yearsToHunderd years to be 100");
}

//Exercice 2
void main() {
  stdout.write("Enter a number");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print('number is even');
  } else {
    print('number is odd');
  }
}

//Exercice 3
void main() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int i = 0; i < a.length; i++) {
    if (i < 5) {
      print('$i');
    }
  }
}

//Exercice 4
void main() {
  stdout.write("Enter a number");
  int number = int.parse(stdin.readLineSync()!);

  print('La liste des diviseurs de $number est :');
  for (int i = 1; i < number; i++) {
    if (number % i == 0) {
      print('$i');
    }
  }
}*/

//Exercice 5
void main() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        var res = a[i];
        print('$res');
      }
    }
  }
}
