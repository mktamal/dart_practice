import 'dart:io';

void main() {
  Map<int, int> products = {101: 10, 202: 25, 303: 5};

  String s = stdin.readLineSync()!;

  List<int> list = s.split(' ').map((String num) => int.parse(num)).toList();
  int i = list[0];
  int q = list[1];

  if (i >= 0 &&
      i <= 20000 &&
      q >= 0 &&
      q <= 20000) {
    print('${getPrice(i,q,products)}');
  }
}

int getPrice(int id, int count, Map<int, int> products) {
  if (products.containsKey(id)) {
    int price = products[id] ?? 0;
    return count*price;
  }
  return 0;
}
