import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
    Todotile({super.key,required this.tileName,required this.onChanged,required this.taskcomplete});
 final String tileName;
  final bool taskcomplete;
  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(8),
        color:const  Color.fromARGB(255, 255, 230, 0)),
        
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Row(
          children: [
            Checkbox(value:taskcomplete , onChanged: onChanged,activeColor:Colors.black,),
           
              Text(tileName,style:  TextStyle(decoration:taskcomplete ? TextDecoration.lineThrough:TextDecoration.none),),
              
            
            
          ],
        ),
      ),
        
      ),
    );
  }
}