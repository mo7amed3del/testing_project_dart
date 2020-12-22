class Stack {
  int size;
  int top;
  //int capacity;
  List list;

  Stack(capacity) {
    top = -1;
    size = capacity;
    list = List(size);
  }

  // ignore: missing_return
  void push(var x) {
    if (size == top) {
      return;
    }

    ++top;
    list[top] = x.toString();

    top = top % size;
  }

  // ignore: always_declare_return_types
  void pop() {
    // check if Stack is empty
    if (top == -1) {
      return;
    }

    // shift elements to the right by one place uptil rear
    else {
      // decrement rear
      top--;
    }
    return;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void peek() {
    if (top == -1) {
      return;
    } else {
      print(list[top]);
    }
  }

  int length() {
    return size;
  }

  void printStack() {
    /* if (front == rear) {
      return;
    }*/
    for (var i = 0; i < top; i++) {
      print(list[i]);
    }
  }

  List returnstack() {
    /* if (front == rear) {
      return;
    }*/
    return list;
  }
}
