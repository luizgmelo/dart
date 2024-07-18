import 'queue.dart';
import 'package:test/test.dart';

void main() {
  test('Enqueue should add always a value next to the latest node', () {
    Queue queue = Queue();
    queue.enqueue(10);
    expect(queue.head?.value, 10);
    queue.enqueue(20);
    expect(queue.head?.next?.value, 20);
    queue.enqueue(30);
    expect(queue.head?.next?.next?.value, 30);
  });

  test('Dequeue should remove always the head value', () {
    Queue queue = Queue();
    queue.head = new Node(10);
    queue.head!.next = new Node(20);
    queue.head!.next!.next = new Node(30);

    expect(queue.dequeue(), 10);
    expect(queue.dequeue(), 20);
    expect(queue.dequeue(), 30);
  });
}
