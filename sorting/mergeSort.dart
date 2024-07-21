void mergeSort(List<int> v, int left, int right) {
  if (left >= right) {
    return;
  }

  int middle = (left + right) ~/ 2;
  mergeSort(v, left, middle);
  mergeSort(v, middle + 1, right);
  merge(v, left, middle, right);
}

void merge(List<int> v, int left, int middle, int right) {
  List<int> helper = [...v];

  int i = left;
  int j = middle + 1;
  int k = left;

  while (i <= middle && j <= right) {
    if (helper[i] <= helper[j]) {
      v[k] = helper[i];
      i++;
    } else {
      v[k] = helper[j];
      j++;
    }
    k++;
  }

  while (i <= middle) {
    v[k] = helper[i];
    i++;
    k++;
  }
}
