import 'dart:io';

void main() {
  String? S = stdin.readLineSync()!;
  //List<String> list = List<String>.filled(5, '');
  int? result=0;

  if (S.length < 6) {
    int? digit1 = int.tryParse(S[0]);
    int? digit2 = int.tryParse(S[4]);
    String? operator = S[2];

    if((digit1!>=0 && digit2!<=9) && (digit2>=0 && digit2<=9))

    switch (operator) {
      case '+':
        result = (digit1 + digit2);
        break;
      case '-':
        result = (digit1 - digit2);
        break;
      case '*':
        result = (digit1 * digit2);
        break;
      case '/':
        if(digit2!=0){
          result = (digit1 / digit2).floor();
        }
        break;
    }
    print(result);
  }
}
