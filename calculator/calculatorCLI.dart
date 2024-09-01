import 'dart:io';

void main() {
  print("Type a number:");
  int? a = int.parse(stdin.readLineSync()!);
  print("Type another number:");
  int? b = int.parse(stdin.readLineSync()!);
  print(
      "What operation you want to do:\n1.Sum\n2.Subtract\n3.Multiply\n4.Divide\nYour option:");
  String? option = stdin.readLineSync();
  Calculatorcli calculatorcli = new Calculatorcli();
  switch (option) {
    case "1":
      calculatorcli.sum(a, b);
      break;
    case "2":
      calculatorcli.subtract(a, b);
      break;
    case "3":
      calculatorcli.multiply(a, b);
      break;
    case "4":
      calculatorcli.divide(a, b);
      break;
    default:
      print("Invalid option");
  }
}

class Calculatorcli {
  int sum(int a, int b) {
    print("$a + $b = ${a + b}");
    return a + b;
  }

  int subtract(int a, int b) {
    print("$a - $b = ${a - b}");
    return a - b;
  }

  int multiply(int a, int b) {
    print("$a x $b = ${a * b}");
    return a * b;
  }

  int divide(int a, int b) {
    print("$a / $b = ${a ~/ b}");
    return a ~/ b;
  }
}
