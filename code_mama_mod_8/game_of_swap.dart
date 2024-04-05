import 'dart:io';

void main() {
  String? i = stdin.readLineSync()!;
  List<int> list =  i.split(' ').map((String number) => int.parse(number)).toList();
  int num1 = list[0], num2 = list[1];
  print('Before swapping: num1 = $num1, num2 = $num2');

  int temp = num1;
  num1 = num2;
  num2 = temp;
  print('After swapping: num1 = $num1, num2 = $num2');

}