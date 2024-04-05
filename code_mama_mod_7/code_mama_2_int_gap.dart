/*
int gap
*/ /*


void main() {
  int l1, r1, l2, r2;

  l1 = 10;
  r1 = 20;
  l2 = 13;
  r2 = 16;

  for (int i = l1; i <= r1; i++) {
    if (i >= l2 && i <= r2) {
      print(i);
    }
  }
}
*/

import 'dart:io';

void main() {
  print('Read input values: ');

  String inputString = stdin.readLineSync()!;
  int l1 = 0, r1 = 0, l2 = 0, r2 = 0;

  List<int> input = inputString.split(' ').map(int.parse).toList();
  l1 = input[0];
  r1 = input[1];
  l2 = input[2];
  r2 = input[3];

  // Check if the input satisfies the constraints
  if (l1 >= 0 &&
      l1 < r2 &&
      r2 >= 10 &&
      r2 <= 1000 &&
      l2 >= 1 &&
      l2 <= 901 &&
      r2 >= 2 &&
      r2 <= 902 &&
      l1 < l2 &&
      l2 < r2 &&
      r2 < r1) {
    // Print numbers between l1 and r1 excluding numbers between l2 and r2
    for (int i = l1; i <= r1; i++) {
      if (i < l2 || i > r2) {
        stdout.write('$i ');
      }
    }
  } else {
    print(
        'Invalid input. Please provide valid integers satisfying the constraints.');
  }
}
