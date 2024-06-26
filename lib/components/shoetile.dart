import 'package:flutter/material.dart';
import 'package:newproject/models/shoe.dart';

// ignore: must_be_immutable
class Shoetile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   Shoetile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Image.asset(shoe.imagepath),

          //description
          Text(shoe.description),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children: [
               
                Text(shoe.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
               
                  
                  Text('\$${shoe.price}',style: const TextStyle(fontWeight: FontWeight.bold,),),
              
                ]
                 
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Colors.black
                ),
                child: const Icon(Icons.add,color: Colors.white,)),
            )

          ],)

          
        ],
      ),



    );
  }
}