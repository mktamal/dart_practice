import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  print(transformString(input));
}

String transformString(String input) {
  StringBuffer output = StringBuffer();

  for (int i = 0; i < input.length; i += 2) {
    if (i + 2 < input.length) {
      output.write(input.substring(i,i+2)+'x');
    }
    else{
      output.write(input.substring(i));
    }
  }
  return output.toString();
}
