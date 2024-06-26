import 'package:flutter/material.dart';

class Signinbutton extends StatelessWidget {
  void Function()? onTap;
   Signinbutton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap,
      child: Container( 
        padding: const EdgeInsets.all(20),
        margin:const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
           
        ),
        
         child:const Center(child: Text('SIGN IN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
    );
   
  }
}