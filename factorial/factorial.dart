import 'dart:io';

void main() {
  stdout.write("Type the number to calculate factorial:\n!");
  String? input = stdin.readLineSync();
  if (input != null) {
    int number = int.parse(input);
    bool showCalc = true;
    int result = calculateFactorial(number, showCalc);
    print(result);
  }
}

int calculateFactorial(int factorial, bool showCalc) {
  if (showCalc) {
    if (factorial == 1) {
      stdout.write("$factorial = ");
    } else {
      stdout.write("$factorial * ");
    }
  }

  if (factorial == 1) {
    return 1;
  }

  return factorial * calculateFactorial(factorial - 1, showCalc);
}
