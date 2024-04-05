import 'dart:io';

void main(){
  String? i = stdin.readLineSync();
  double c = 0;
  c = double.parse(i!);
  double f = 0;
  f = (c*(9/5))+32;
  print('The temperature in Fahrenheit is: ${f.toStringAsFixed(2)}');

}

