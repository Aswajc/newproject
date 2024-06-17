import 'package:flutter/material.dart';
import 'package:newproject/pages/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
          //logo
          Image.asset('lib/images/puma main.png',
          height: 250,width: 400,
          ),
      
          //description
          const Text('Just Start  !!',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          ),
        
        const SizedBox(height: 20,),
      
          //subtitle
          const Text('This is the best you can get.dont go anywhere else',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          ),
      
      const SizedBox(height: 50),
          //button to start
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: GestureDetector(
              onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>const Homepage())),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
                
                child:
               const Padding(
                 padding: EdgeInsets.all(25.0),
                 child: Center(child:  Text('Enter',
                 style: TextStyle(fontWeight: FontWeight.bold,
                 color: Colors.white
                 
                 ),
                
                 )),
               )),
            ),
          )
        ],
      
      ),
    );
  }
}