class Queue {
  int size;
  int front;
  int rear;
  //int capacity;
  List list;

  Queue(capacity) {
    front = rear = 0;
    size = capacity;
    list = List(size);
  }

  // ignore: missing_return
  void enqueue(var x) {
    if (size == rear) {
      return;
    }
    list[rear] = x.toString();
    rear++;
    rear = rear % size;
  }

  // ignore: always_declare_return_types
  void dequeue() {
    // check if queue is empty
    if (front == rear) {
      return;
    }

    // shift elements to the right by one place uptil rear
    else {
      for (var i = 0; i < rear - 1; i++) {
        list[i] = list[i + 1];
      }

      // set queue[rear] to 0
      if (rear < size) {
        list[rear] = 0;
      }

      // decrement rear
      rear--;
    }
    return;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void peek() {
    if (front == rear) {
      return;
    } else {
      print(list[front]);
    }
  }

  int length() {
    return size;
  }

  void printQueue() {
    /* if (front == rear) {
      return;
    }*/
    for (var i = front; i < rear; i++) {
      print(list[i]);
    }
  }

  List returnQueue() {
    /* if (front == rear) {
      return;
    }*/
    return list;
  }
}
