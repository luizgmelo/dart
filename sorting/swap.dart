void swap(int a, int b, List<int> array) {
  var temp = array[a];
  array[a] = array[b];
  array[b] = temp;
}
