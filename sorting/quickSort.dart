import 'swap.dart';

void quickSort(List<int> v, int left, int right) {
  if (left < right) {
    int pivot = partition(v, left, right);
    quickSort(v, left, pivot - 1);
    quickSort(v, pivot + 1, right);
  }
}

int partition(List<int> v, int left, int right) {
  int pivot = v[left];
  int i = left;

  for (int j = left + 1; j <= right; j++) {
    if (v[j] <= pivot) {
      i += 1;
      swap(i, j, v);
    }
  }

  swap(left, i, v);

  return i;
}
