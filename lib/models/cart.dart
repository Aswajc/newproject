//list of item for sale
import 'package:flutter/material.dart';
import 'package:newproject/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe>shoeshop=[
  Shoe(name: 'jord', price: '300', description: 'the best', imagepath: 'lib/images/air.png'),
  Shoe(name: 'nike', price: '250', description: 'the not', imagepath: 'lib/images/shoe2.png'),
  Shoe(name: 'puma', price: '150', description: 'sui', imagepath: 'lib/images/shoe2.png'),
  Shoe(name: 'airi ', price: '400', description: 'woow', imagepath: 'lib/images/shoe2.png'),

];
//items in user cart
List<Shoe>userCart=[];

//get shoes for sale
List<Shoe>getShoeList(){
  return shoeshop;
}


//get items in user cart
List<Shoe>getUserCart(){
  return userCart;
}

//addto cart
void addToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();

}

//remove from cart
void removeFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}
}