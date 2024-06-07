
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String ButtonName;
 
   MyButton({super.key,required this.ButtonName,});


  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {
    
    }, child: Text(ButtonName,),);
  }
}