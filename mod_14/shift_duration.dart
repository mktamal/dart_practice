import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<int> i = input.split(' ').map((String num) => int.parse(num)).toList();
  int s = i[0];
  int e = i[1];
  int duration = 0;

  if(e<=s){
    duration = e+24-s;
  }
  else{
    duration = e-s;
  }

  print(duration);
}