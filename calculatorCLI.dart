import 'dart:io';

void main() {
  print("Type a number:");
  int? a = int.parse(stdin.readLineSync()!);
  print("Type another number:");
  int? b = int.parse(stdin.readLineSync()!);
  print(
      "What operation you want to do:\n1.Sum\n2.Subtract\n3.Multiply\n4.Divide\nYour option:");
  String? option = stdin.readLineSync();
  switch (option) {
    case "1":
      sum(a, b);
      break;
    case "2":
      subtract(a, b);
      break;
    case "3":
      multiply(a, b);
      break;
    case "4":
      divide(a, b);
      break;
    default:
      print("Invalid option");
  }
}

void sum(int a, int b) {
  print("$a + $b = ${a + b}");
}

void subtract(int a, int b) {
  print("$a - $b = ${a - b}");
}

void multiply(int a, int b) {
  print("$a x $b = ${a * b}");
}

void divide(int a, int b) {
  print("$a / $b = ${a / b}");
}
