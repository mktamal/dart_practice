import 'dart:ffi';

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> createCustomOrderMsg() async{
  var order = await fetchCustomCoffeeOrder();
  return 'Your order is: $order';
}

Future<String> fetchCustomCoffeeOrder()=>
Future.delayed(
  const Duration(seconds: 1),
    ()=>'Custom coffee',

);

Future<String> fetchUserOrder() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

Future<void> main() async {
  print('Fetching user order...');
  print(await createCustomOrderMsg());
  print(await createOrderMessage());
}


