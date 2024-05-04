import 'dart:io';
import 'dart:math';

void main() {
  String i = stdin.readLineSync()!;
  List<int> list =
      i.split(' ').map((String number) => int.parse(number)).toList();
  int wheel = list[0];
  int body = list[1];
  int fig = list[2];

  if (wheel >= 0 &&
      wheel <= 100000 &&
      body >= 0 &&
      body <= 100000 &&
      fig >= 0 &&
      fig <= 100000) {
    print(calculateMaxCars(wheel, body, fig));
  }
}

int calculateMaxCars(int wheel, int body, int fig) {
  int result = 0;

  result = min(min(wheel ~/ 4, body), fig ~/ 2);

  return result;
}
