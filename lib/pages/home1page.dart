import 'package:flutter/material.dart';
import 'package:newproject/components/shoetile.dart';
import 'package:newproject/models/shoe.dart';

class Home1page extends StatelessWidget {
  const Home1page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.grey[200],
     
      body:  Column(
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

        Shoe shoe=Shoe(name: 'Nike', price: '200', description: 'The best seller', imagepath: 'lib/images/shoe2.png');
      return Shoetile(
        shoe:shoe ,
      );
      })
      ),

      Padding(
        padding: const EdgeInsets.only(top: 30,left: 25,right: 25),
        child: Divider(
          color: Colors.white,
        ),
      )


        
       ],

      
       
        
      )
    );
  }
}