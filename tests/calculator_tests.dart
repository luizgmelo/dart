import 'package:test/test.dart';

import '../calculator/calculatorCLI.dart';

void main() {
  group("Testes da calculadora CLI | ", () {
    // Arrange
    late final calculatorCli; 

    setUpAll(() {
      calculatorCli = Calculatorcli();
    });

    test('Teste de soma', () {
      // Act
      int result = calculatorCli.sum(2, 2);
      // Assert
      expect(result, allOf(equals(4), isPositive, isA<int>()));
    });

    test('Teste de subtração', () {
      // Act
      int result = calculatorCli.subtract(2, 2);
      // Assert
      expect(result, allOf(equals(0), isNotNull, isA<int>()));
    });

    test('Teste de divisão', () {
      // Act
      int result = calculatorCli.divide(2, 2);
      // Assert
      expect(result, allOf(equals(1), isPositive, isA<int>()));
    });

    test('Teste de multiplicação', () {
      // Act
      int result = calculatorCli.multiply(2, 2);
      // Assert
      expect(result, allOf(equals(4), isPositive, isA<int>()));
    });
  });
}