import 'package:flutter/material.dart';
import 'package:newproject/models/cart.dart';
import 'package:newproject/models/shoe.dart';
import 'package:provider/provider.dart';

class Cartitem extends StatefulWidget {
  Shoe shoe;
   Cartitem({super.key,required this.shoe});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context ,listen: false).removeFromCart(widget.shoe);

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
      
        title: Text(widget.shoe.name),
        leading: Image.asset(widget.shoe.imagepath),
        subtitle: Text(widget.shoe.price),
        trailing: Icon(Icons.delete),onTap: removeItemFromCart,
        
      ),
    );
  }
}