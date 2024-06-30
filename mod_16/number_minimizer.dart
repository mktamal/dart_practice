import 'dart:io';

void main() {
  //print('Enter the string S and the integer K separated by a space:');
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> parts = input.split(' ');
    if (parts.length == 2) {
      String S = parts[0];
      int K = int.parse(parts[1]);

      // Ensure K is within the valid range
      if (K <= S.length) {
        List<int> digits = S.split('').map((e) => int.parse(e)).toList();
        int changes = 0;

        for (int i = 0; i < digits.length && changes < K; i++) {
          if (i == 0 && digits[i] != 1) { // First digit should be 1 to avoid leading zeros
            digits[i] = 1;
            changes++;
          } else if (i != 0 && digits[i] != 0) {
            digits[i] = 0;
            changes++;
          }
        }

        String result = digits.join('');
        print('Min = $result');
      } else {
        print('The value of K must be less than or equal to the length of the string S.');
      }
    } else {
      print('Invalid input. Please provide a string and an integer separated by a space.');
    }
  } else {
    print('Invalid input.');
  }
}
