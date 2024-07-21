import 'swap.dart';

void selectionSort(List<int> arr) {
  var length = arr.length;
  for (var i = 0; i < length; i++) {
    var minIndex = i;
    bool change = false;
    for (var j = i + 1; j < length; j++) {
      if (arr[minIndex] > arr[j]) {
        minIndex = j;
        change = true;
      }
    }
    if (change) {
      swap(i, minIndex, arr);
    }
  }
}
