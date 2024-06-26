import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final  obscuretext;
  const Mytextfield({super.key,required this.controller,required this.hinttext,required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child:  TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration:  InputDecoration(
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 183, 181, 181))),
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey[500])
          
        ),
        
      
      
      ),
    );
  }
}