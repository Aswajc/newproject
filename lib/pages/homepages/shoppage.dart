import 'package:flutter/material.dart';
import 'package:newproject/components/shoetile.dart';
import 'package:newproject/models/cart.dart';
import 'package:newproject/models/shoe.dart';
import 'package:provider/provider.dart';

class Home1page extends StatefulWidget {
  const Home1page({super.key});

  @override
  State<Home1page> createState() => _Home1pageState();
}

class _Home1pageState extends State<Home1page> {

  void addToCart(Shoe shoe){
    Provider.of<Cart>(context ,listen: false).addToCart(shoe);
    

    showDialog(context: context, builder:(context) => AlertDialog(
      title: Text('successfully added'),
      content:Text ('check cart'),

    ),);
  }


  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(
      builder:(context, value, child) =>Column(
       //search bar
       children: [
                  Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
             borderRadius:BorderRadius.circular(8)
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search',style: TextStyle(color: Color.fromARGB(255, 139, 132, 132)),),
                Icon(Icons.search)
              ],
            ),
          ),

           //text
           const Padding(
             padding: EdgeInsets.all(20.0),
             child:  Text('EA SPORT.....ITS IN THE GAME',style: TextStyle(
              color: Colors.grey
             ),),
           ),
          
         
       //images
      const Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
          Text('Hot Picks Today',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),),
        
          Text('See All',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue
          ),)
        
        ],),
      ),

      Expanded(child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context,index){

        Shoe shoe=value.getShoeList()[index];
      return Shoetile(
        shoe:shoe, 
        onTap:() => addToCart(shoe),
      );
      })
      ),

      const Padding(
        padding: EdgeInsets.only(top: 30,left: 25,right: 25),
        child: Divider(
          color: Colors.white,
        ),
      )


        
       ],  
        
      )
    );
  }
}