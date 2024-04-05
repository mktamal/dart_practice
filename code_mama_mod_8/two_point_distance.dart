
import 'dart:math';
import 'dart:io';

void main() {
  String? input1 = stdin.readLineSync()!;
  List<double> p1 =
  input1.split(' ').map((String number) => double.parse(number)).toList();
  String? input2 = stdin.readLineSync()!;
  List<double> p2 =
  input2.split(' ').map((String number) => double.parse(number)).toList();
  double result = 0;
  result =  calculateDistance(p1[0], p1[1], p2[0], p2[1]);
  print('Distance: ${result.toStringAsFixed(2)}');
}

double calculateDistance(double x1, double y1, double x2, double y2) {
  double dx = x2 - x1;
  double dy = y2 - y1;
  return sqrt(dx * dx + dy * dy);
}
