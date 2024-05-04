import 'dart:io';

void main() {
  String i = stdin.readLineSync()!;
  List<int> list = i.split(' ').map((String num) => int.parse(num)).toList();
  int orgPrice = list[0];
  int discount = list[1];
  if (orgPrice >= 0 &&
      orgPrice <= 100000 &&
      discount >= 0 &&
      discount <= 100000) {
    print('Price: ${discountedPrice(orgPrice.toDouble(), discount.toDouble())}');
  }
}

String discountedPrice(double price, double discount) {
  double result =  (price * (100-discount)) / 100;
  return result.toStringAsFixed(2);
}
