// FIFO

class Node {
  int value;
  Node? next;

  Node(this.value);
}

class Queue {
  Node? head;

  Queue();

  Queue.withFirstNode(this.head);

  void enqueue(int value) {
    if (this.head == null) {
      this.head = new Node(value);
    } else {
      Node? actual = this.head;
      while (actual!.next != null) {
        actual = actual.next;
      }
      actual.next = new Node(value);
    }
  }

  int? dequeue() {
    if (this.head == null) {
      return null;
    }
    Node? removed = this.head;
    this.head = this.head?.next;
    return removed?.value;
  }
}
