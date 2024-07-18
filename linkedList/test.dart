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
}
