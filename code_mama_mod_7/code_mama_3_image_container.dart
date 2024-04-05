import 'dart:io';

void main() {

  String? i = stdin.readLineSync();
  String? input = '';
  input = i;

  if (input != null) {
    int IW = int.tryParse(input)!;
    if (IW >= 400 && IW % 10 == 0) {
      int containerWidth = 1000;
      int leftMargin = 0;

      if (IW <= containerWidth) {
        int remainingSpace = containerWidth - IW;
        leftMargin = remainingSpace ~/ 2;
      }

      print(leftMargin);
    } else {
      print('Please enter a valid number: 400 <= IW <= 1000 and IW is divisible by 10.');
    }
  } else {
    print('Please enter a valid number.');
  }
}
