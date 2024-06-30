import 'dart:io';

void main() {
  //print('Enter the number of elements followed by the boolean values (1 for true, 0 for false):');
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> parts = input.split(' ');
    int length = int.parse(parts[0]);
    List<bool> values = parts.sublist(1, length + 1).map((value) => value == '1').toList();

    int trueCount = values.where((value) => value == true).length;
    print(trueCount);
  } else {
    print('Invalid input');
  }
}
