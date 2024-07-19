void main() {
  // Set with values
  var fruits = {'apple', 'apple', 'apricot', 'avocado', 'banana', 'blackberry'};
  print(fruits);
  // Empty set
  var names = <String>{};
  // Set<String> names = {}; // works too!
  // var names = {}; // create a map not a Set

  // Adding items
  names.add('Guilherme');
  names.addAll(fruits);
  assert(names.length == 6);
}
