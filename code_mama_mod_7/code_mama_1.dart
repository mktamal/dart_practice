/*table width*/

import 'dart:io';

void main() {
  print('Enter number: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int screenWidth = int.parse(input);
    int tableWidth = 300;
    int horizontalPosition = (screenWidth - tableWidth) ~/ 2;
    print(horizontalPosition);
  } else {
    print('Invalid input. Please provide a valid screen width.');
  }
}
