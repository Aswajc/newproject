import 'package:flutter/material.dart';
import 'package:newproject/models/shoe.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
   Shoetile({super.key,required this.shoe});

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(shoe.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
                Text('\$'+ shoe.price,style: const TextStyle(fontWeight: FontWeight.bold,),),
            
              ]
               
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                color: Colors.black
              ),
              child: const Icon(Icons.add,color: Colors.white,))

          ],)

           //price
          

           //add cart

          
        ],
      ),



    );
  }
}