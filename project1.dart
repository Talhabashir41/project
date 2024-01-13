import 'dart:io';

void main() {
  print('MEDICAL STORE');
  List Item = [
    {"item": "panadol", "quantity": 90, "price": 30},
    {"item": "arinic", "quantity": 70, "price": 50},
    {"item": "rigix", "quantity": 60, "price": 35},
    {"item": "rapricort", "quantity": 60, "price": 35},
    {"item": "voren", "quantity": 60, "price": 35},
    {"item": "flagyl", "quantity": 60, "price": 35},
    {"item": "imodium", "quantity": 60, "price": 35},
    {"item": "risek", "quantity": 60, "price": 35},
    {"item": "moxiget", "quantity": 60, "price": 35},
    {"item": "softin", "quantity": 60, "price": 35},
    {"item": "kestine", "quantity": 60, "price": 35},
    {"item": "diamicron", "quantity": 60, "price": 35},
    {"item": "lexotanil", "quantity": 60, "price": 35},
  ];
  for (var i = 0; i < Item.length; i++) {
    var a = Item[i]['item'];
    var b = Item[i]['price'];
    print('$a price per pack $b');
  }
  print('your order');
  var Order = [
    {stdin.readLineSync()!: int.parse(stdin.readLineSync()!)},
    // {"moxiget": 6, "diamicron": 8, "imodium": 5},
    // {"lexotanil": 6, "moxiget": 8, "kestin": 5},
    // {"imodium": 6, "softin": 8, "lexotanil": 75}
  ];
  num total = 0;
  for (var i = 0; i < Order.length; i++) {
    print('order no# $i');
    for (var j = 0; j < Item.length; j++) {
      var itemname = Item[j]['item'];
      var itemprice = Item[j]['price'];
      var itemquantity = Item[j]['quantity'];
      var order = Order[i];
      var orderitem = order[itemname];
      if (orderitem != null) {
        if (orderitem < itemquantity) {
          num total1 = orderitem * itemprice;
          total += total1;
          Item[j]['quantity'] = Item[j]['quantity'] - orderitem;
          print('$itemname:$orderitem\n$orderitem X $itemprice = $total1');
        } else {
          print('$itemname is out of stock');
        }
      }
    }
    print('Total bill=$total');
    total = 0;
  }
}
