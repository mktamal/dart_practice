import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  print(transformString(input));
}

String transformString(String input) {
  String output = '';

  for (int i = 0; i < input.length; i++) {

    if ((i + 1) % 3 == 0) {
      output = output+input[i].toUpperCase();
    }
    else{
      output = output+input[i];
    }
  }
  return output;
}
