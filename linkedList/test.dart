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
}
