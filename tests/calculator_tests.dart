import 'package:test/test.dart';

import '../calculator/calculatorCLI.dart';

void main() {


  group("Testes da calculadora CLI | ", () {
    test('Teste de soma', () {
      // Arrange
      final calculatorCli = Calculatorcli();
      // Act
      int result = calculatorCli.sum(2, 2);
      // Assert
      expect(result, allOf(equals(4), isPositive, isA<int>()));
    });

    test('Teste de subtração', () {
      // Arrange
      final calculatorCli = Calculatorcli();
      // Act
      int result = calculatorCli.subtract(2, 2);
      // Assert
      expect(result, allOf(equals(0), isNotNull, isA<int>()));
    });

    test('Teste de divisão', () {
      // Arrange
      final calculatorCli = Calculatorcli();
      // Act
      int result = calculatorCli.divide(2, 2);
      // Assert
      expect(result, allOf(equals(1), isPositive, isA<int>()));
    });

    test('Teste de multiplicação', () {
      // Arrange
      final calculatorCli = Calculatorcli();
      // Act
      int result = calculatorCli.multiply(2, 2);
      // Assert
      expect(result, allOf(equals(4), isPositive, isA<int>()));
    });
  });
}