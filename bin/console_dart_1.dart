import 'package:test/test.dart';
import 'dart:io';
import 'dart:math';

import 'Stack.dart';
import 'queue.dart';

void main() {
//test for queue
  var r = Random();
  for (var i = 1; i < 100; i++) {
    test('test queue', () {
      var y = r.nextInt(4);
      var queue = Queue(4);

      queue.enqueue(y);
      queue.enqueue(y + 1);
      queue.enqueue(y + 2);
      queue.enqueue(y + 3);

      expect(
          queue.returnQueue(),
          ([
            (y).toString(),
            (y + 1).toString(),
            (y + 2).toString(),
            (y + 3).toString()
          ]));
    });
  }
  // test for stack class
  var r2 = Random();
  for (var i = 1; i < 100; i++) {
    test('test stack', () {
      var y = r2.nextInt(4);
      var stack = Stack(4);

      stack.push(y);
      stack.push(y + 1);
      stack.push(y + 2);
      stack.push(y + 3);

      expect(
          stack.returnstack(),
          ([
            (y).toString(),
            (y + 1).toString(),
            (y + 2).toString(),
            (y + 3).toString()
          ]));
    });
  }

/*
  var x = stdin.readLineSync();
  // ignore: omit_local_variable_types
  int y = int.parse(x);
  var stack = Stack(y);

  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('****************************************');

  stack.peek();
  print('****************************************');

  stack.pop();
  print('****************************************');

  stack.printStack();
  print('****************************************');
  print(stack.length());
  print(stack.isEmpty());

  stack.peek();
  */
}
