import 'swap.dart';

void bubbleSort(List<int> list) {
  var length = list.length;
  for (var i = 0; i < length - 1; i++) {
    for (var j = 0; j < length - 1; j++) {
      if (list[j] > list[j + 1]) {
        swap(j, j + 1, list);
      }
    }
  }
}
