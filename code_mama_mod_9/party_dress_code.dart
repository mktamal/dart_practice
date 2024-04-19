import 'dart:io';

void main() {

  String? S = stdin.readLineSync()!;
  String? T = stdin.readLineSync()!;

  int? t = int.tryParse(T);

  if(S=='casual' && (t!>=15 && t<=25)){
    print('Jeans and a light jacket.');
  }
  else if(S=='festive' && (t!>25)){
    print('Colorful dress and sandals.');
  }
  else{
    print("Wear what you're comfortable in.");
  }
}