main(){
  int n = 12;
  double n2 = 3.1244;

  double result = n.toDouble()+n2;

  print(result.toStringAsFixed(2));

  String name = result.toString();
  print(name);
  print(name.runtimeType);

  double result3 = 12.32+double.parse(name);
  print(result3);

  int a = int.parse('121');
  print(a+12);

}