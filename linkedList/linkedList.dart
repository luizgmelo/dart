class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;
  int size = 0;

  LinkedList();

  LinkedList.initizalized(this.head, this.tail);

  bool isEmpty() {
    return this.head == null && this.tail == null;
  }

  int indexOf(int value) {
    if (!isEmpty()) {
      Node? actual = this.head;
      int i = 0;
      while (actual != null) {
        if (actual.value == value) {
          return i;
        }
        actual = actual.next;
        i++;
      }
    }
    return -1;
  }

  void insert(index, value) {
    this.size += 1;
    Node? newNode = new Node(value);

    if (this.head == null) {
      this.head = newNode;
      this.tail = this.head;
      return;
    }

    if (index == 0) {
      newNode.next = this.head;
      this.head = newNode;
      if (this.size == 2) {
        this.tail = newNode.next;
      }
      return;
    }

    Node? actual = this.head;
    int i = 0;
    while (actual!.next != null && i < index - 1) {
      actual = actual.next;
      i += 1;
    }
    if (actual.next == null) {
      this.tail = newNode;
    } else {
      newNode.next = actual.next;
    }
    actual.next = newNode;
  }

  bool remove(int value) {
    if (isEmpty()) {
      return false;
    }

    if (this.size == 1) {
      this.head = null;
      this.tail = null;
      this.size -= 1;
      return true;
    }

    Node? actual = this.head;
    Node? previous;
    while (actual!.next != null) {
      if (actual.value == value) {
        previous!.next = actual.next;
        this.size -= 1;
        return true;
      }
      previous = actual;
      actual = actual.next;
    }
    return false;
  }
}
