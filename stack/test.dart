import 'stack.dart';
import 'package:test/test.dart';

void main() {
  test('Stack append add a element at top in stack', () {
    var stack = Stack();
    stack.append(10);
    stack.append(20);
    stack.append(30);
    expect(stack.head?.value, 10);
    expect(stack.head?.next?.value, 20);
    expect(stack.head?.next?.next?.value, 30);
    expect(stack.size, 3);
  });

  test('Stack pop remove the top element in stack', () {
    var stack = Stack();
    stack.append(10);
    stack.append(20);
    stack.append(30);

    expect(stack.pop(), 30);
    expect(stack.pop(), 20);
    expect(stack.pop(), 10);

    expect(stack.size, 0);
  });
}
