import 'linkedList.dart';
import 'package:test/test.dart';

void main() {
  test(
      'insert(index, value) create a node with value in a determinate position.',
      () {
    LinkedList my_list = new LinkedList();

    // 10
    my_list.insert(0, 10);
    expect(my_list.head!.value, 10);
    expect(my_list.size, 1);
    // 10 -> 20
    my_list.insert(1, 20);
    expect(my_list.head!.next!.value, 20);
    // 10 -> 20 -> 30
    my_list.insert(2, 30);
    expect(my_list.head!.next!.next!.value, 30);
    // 0 -> 10 -> 20 -> 30
    my_list.insert(0, 0);
    expect(my_list.head!.value, 0);
    expect(my_list.head!.next!.value, 10);
    // 0 -> 10 -> 15 -> 20 -> 30
    my_list.insert(2, 15);
    expect(my_list.head!.next!.next!.value, 15);

    expect(my_list.size, 5);
    expect(my_list.head!.value, 0);
    expect(my_list.tail!.value, 30);
  });

  test('remove(value) remove the first occurrence of [value] from this list',
      () {
    LinkedList my_list = new LinkedList();
    // remove root
    my_list.head = Node(10);
    my_list.tail = my_list.head;
    my_list.size = 1;

    expect(my_list.remove(10), true);
    expect(my_list.head, null);
    expect(my_list.tail, null);
    expect(my_list.size, 0);

    // remove element anywhere
    my_list.head = Node(10);
    my_list.head!.next = Node(20);
    my_list.head!.next!.next = Node(30);
    my_list.size = 3;

    expect(my_list.remove(20), true);
    expect(my_list.head!.value, 10);
    expect(my_list.head!.next!.value, 30);
    expect(my_list.size, 2);
  });

  test(
      'indexOf(value) method returns the first occurrence of the given element in a list. If the element is not found, the method will return -1.',
      () {
    LinkedList my_list = new LinkedList();
    my_list.insert(0, 22);
    my_list.insert(1, 43);
    my_list.insert(2, 12);
    my_list.insert(3, 9);

    expect(my_list.indexOf(22), 0);
    expect(my_list.indexOf(43), 1);
    expect(my_list.indexOf(12), 2);
    expect(my_list.indexOf(9), 3);

    expect(my_list.indexOf(99), -1);
    expect(my_list.indexOf(23), -1);
    expect(my_list.indexOf(44), -1);
    expect(my_list.indexOf(-96), -1);
  });

  test(
      'The .contains(value) method determines whether a specified element is present in a list. It returns a Boolean value of true if the element is found in the list and false if it happens otherwise.',
      () {
    LinkedList my_list = new LinkedList();
    my_list.insert(0, 22);
    my_list.insert(1, 43);
    my_list.insert(2, 12);
    my_list.insert(3, 9);

    expect(my_list.contains(22), true);
    expect(my_list.contains(43), true);
    expect(my_list.contains(12), true);
    expect(my_list.contains(9), true);

    expect(my_list.contains(99), false);
    expect(my_list.contains(23), false);
    expect(my_list.contains(44), false);
    expect(my_list.contains(-96), false);
  });

  test(
      'The .add() method in Dart is used to append a single element to the end of a list. It modifies the original list and extends its length by one to accommodate the new element.',
      () {
    LinkedList my_list = new LinkedList();
    my_list.add(22);
    my_list.add(43);
    my_list.add(12);
    my_list.add(9);

    expect(my_list.head!.value, 22);
    expect(my_list.head!.next!.value, 43);
    expect(my_list.head!.next!.next!.value, 12);
    expect(my_list.head!.next!.next!.next!.value, 9);
    expect(my_list.size, 4);
  });
}
