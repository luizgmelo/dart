class Node {
  int value;
  Node? next;
  Node? prev;

  Node(this.value);
}

class Stack {
  Node? head;
  Node? tail;
  int size = 0;

  Stack();

  void append(int value) {
    this.size += 1;
    Node newNode = Node(value);
    if (this.head == null && this.tail == null) {
      this.head = newNode;
      this.tail = this.head;
      return;
    }
    newNode.prev = this.tail;
    this.tail!.next = newNode;
    this.tail = this.tail!.next;
  }

  int pop() {
    if (this.head == null && this.tail == null) {
      return -1;
    }
    int removed = this.tail!.value;
    if (this.size == 1) {
      this.head = null;
      this.tail = null;
    } else {
      this.tail = this.tail!.prev;
      this.tail!.next = null;
    }
    this.size -= 1;

    return removed;
  }
}
