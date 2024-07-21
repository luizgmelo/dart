import 'package:test/test.dart';
import 'bubbleSort.dart';
import 'insertionSort.dart';
import 'selectionSort.dart';
import 'mergeSort.dart';
import 'quickSort.dart';

void main() {
  group('Sorting algorithms should receive an list and return this in order',
      () {
    test('Bubble Sort Algorithm', () {
      var ordernated_list = [1, 2, 3, 4, 5];
      var inverse_list = [5, 4, 3, 2, 1];
      var random_list = [5, 2, 3, 1, 4];
      var repeated_list = [4, 4, 3, 3, 5, 5, 1, 1, 2, 2];

      bubbleSort(ordernated_list);
      bubbleSort(inverse_list);
      bubbleSort(random_list);
      bubbleSort(repeated_list);

      expect(ordernated_list, [1, 2, 3, 4, 5]);
      expect(inverse_list, [1, 2, 3, 4, 5]);
      expect(repeated_list, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]);
      expect(random_list, [1, 2, 3, 4, 5]);
    });

    test('Insertion Sort Algorithm', () {
      var ordernated_list = [1, 2, 3, 4, 5];
      var inverse_list = [5, 4, 3, 2, 1];
      var random_list = [5, 2, 3, 1, 4];
      var repeated_list = [4, 4, 3, 3, 5, 5, 1, 1, 2, 2];

      insertionSort(ordernated_list);
      insertionSort(inverse_list);
      insertionSort(repeated_list);
      insertionSort(random_list);

      expect(ordernated_list, [1, 2, 3, 4, 5]);
      expect(inverse_list, [1, 2, 3, 4, 5]);
      expect(repeated_list, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]);
      expect(random_list, [1, 2, 3, 4, 5]);
    });

    test('Selection Sort Algorithm', () {
      var ordernated_list = [1, 2, 3, 4, 5];
      var inverse_list = [5, 4, 3, 2, 1];
      var random_list = [5, 2, 3, 1, 4];
      var repeated_list = [4, 4, 3, 3, 5, 5, 1, 1, 2, 2];

      selectionSort(ordernated_list);
      selectionSort(inverse_list);
      selectionSort(repeated_list);
      selectionSort(random_list);

      expect(ordernated_list, [1, 2, 3, 4, 5]);
      expect(inverse_list, [1, 2, 3, 4, 5]);
      expect(repeated_list, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]);
      expect(random_list, [1, 2, 3, 4, 5]);
    });

    test('Merge Sort Algorithm', () {
      var ordernated_list = [1, 2, 3, 4, 5];
      var inverse_list = [5, 4, 3, 2, 1];
      var random_list = [5, 2, 3, 1, 4];
      var repeated_list = [4, 4, 3, 3, 5, 5, 1, 1, 2, 2];

      mergeSort(ordernated_list, 0, ordernated_list.length - 1);
      mergeSort(inverse_list, 0, inverse_list.length - 1);
      mergeSort(repeated_list, 0, repeated_list.length - 1);
      mergeSort(random_list, 0, random_list.length - 1);

      expect(ordernated_list, [1, 2, 3, 4, 5]);
      expect(inverse_list, [1, 2, 3, 4, 5]);
      expect(repeated_list, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]);
      expect(random_list, [1, 2, 3, 4, 5]);
    });

    test('Quick Sort Algorithm', () {
      var ordernated_list = [1, 2, 3, 4, 5];
      var inverse_list = [5, 4, 3, 2, 1];
      var random_list = [5, 2, 3, 1, 4];
      var repeated_list = [4, 4, 3, 3, 5, 5, 1, 1, 2, 2];

      quickSort(ordernated_list, 0, ordernated_list.length - 1);
      quickSort(inverse_list, 0, inverse_list.length - 1);
      quickSort(repeated_list, 0, repeated_list.length - 1);
      quickSort(random_list, 0, random_list.length - 1);

      expect(ordernated_list, [1, 2, 3, 4, 5]);
      expect(inverse_list, [1, 2, 3, 4, 5]);
      expect(repeated_list, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]);
      expect(random_list, [1, 2, 3, 4, 5]);
    });
  });
}
