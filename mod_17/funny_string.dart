import 'dart:io';

void main() {
  //print('Enter the string S:');
  String? input = stdin.readLineSync();

  if (input != null) {
    if (isFunnyString(input)) {
      print('Yes');
    } else {
      print('No');
    }
  }
}

bool isFunnyString(String s) {
  for (int i = 0; i < s.length; i++) {
    if ((i % 2 == 0 && !isLowercase(s[i])) || (i % 2 == 1 && !isUppercase(s[i]))) {
      return false;
    }
  }
  return true;
}

bool isLowercase(String char) {
  return char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122; // ASCII values for 'a' to 'z'
}

bool isUppercase(String char) {
  return char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90; // ASCII values for 'A' to 'Z'
}
