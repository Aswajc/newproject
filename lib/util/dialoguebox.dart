import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newproject/util/button.dart';

class Dialoguebox extends StatelessWidget {
  const Dialoguebox({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const TextField(style: TextStyle(),decoration: InputDecoration(hintText: 'Enter list',border: OutlineInputBorder()),
              
            
          ),

          
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
        
            MyButton(ButtonName: 'save'),
            const SizedBox(width: 8,),
             GestureDetector
             (child: MyButton(ButtonName: 'cancel',),onTap: ()=>
             Navigator.pop(context),)
          ],
            
          )
        ],
        
      ),
      
      
     
    ),
      
    );
  }
}