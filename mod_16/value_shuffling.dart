import 'dart:io';

void main() {
  //print('Enter three integers A, B, and C separated by spaces:');
  String? intInput = stdin.readLineSync();

  //print('Enter the order string (e.g., "ABC", "CAB", "BCA"):');
  String? order = stdin.readLineSync();

  if (intInput != null &&
      order != null &&
      intInput.split(' ').length == 3 &&
      order.length == 3) {
    List<String> intParts = intInput.split(' ');
    List<String> charParts = order.split('');

    if (intParts.length == 3) {
      /*charParts[0] = int.parse(intParts[0]).toString();
      charParts[1] = int.parse(intParts[1]).toString();
      charParts[2] = int.parse(intParts[2]).toString();*/

      Map<String, int> values = {
        charParts[0]: int.parse(intParts[0]),
        charParts[1]: int.parse(intParts[1]),
        charParts[2]: int.parse(intParts[2])
      };

      int? A = values['A'], B = values['B'], C = values['C'];

      // Perform swaps: A=B, B=C, C=A
      int? temp = A;
      A = B;
      B = C;
      C = temp;

      Map<String, int?> newVal = {'A': A, 'B': B, 'C': C};

      print(values);
      print(newVal);

      // Output values in the specified order
      String output = order.split('').map((char) => newVal[char].toString()).join(' ');
      print(output);
    } else {
      print(
          'Invalid input format. Please enter exactly three integers separated by spaces.');
    }
  } else {
    print('Invalid input. Please enter valid integers and order string.');
  }
}
