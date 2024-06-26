import 'package:flutter/material.dart';

class Loginimagetile extends StatelessWidget {
  final String imagepath;
  const Loginimagetile({super.key,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.white)
      ),
      child: Image.asset(imagepath,height: 70,)

    );
       
      
  }
}