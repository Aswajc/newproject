import 'package:flutter/material.dart';
import 'package:newproject/components/CartItem.dart';
import 'package:newproject/models/cart.dart';
import 'package:newproject/models/shoe.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) =>  Scaffold(
      backgroundColor: Colors.grey[200],
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column
        (crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          const Text('My Cart',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
          Expanded(child:
           ListView.builder
            (itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
            //get cart
            Shoe individualShoe=value.getUserCart()[index];

            //show cart
            return Cartitem(shoe: individualShoe,);

          },))
        ],),
      ),


    ),);
  }
}