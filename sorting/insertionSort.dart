import 'swap.dart';

void insertionSort(List<int> arr) {
  var length = arr.length;
  for (var i = 1; i < length; i++) {
    var j = i;
    while (j > 0 && arr[j] < arr[j - 1]) {
      swap(j, j - 1, arr);
      j -= 1;
    }
  }
}
