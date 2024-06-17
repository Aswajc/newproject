// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:newproject/pages/homepage.dart';
import 'package:newproject/pages/intropage.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {  
   return    const MaterialApp(
       debugShowCheckedModeBanner: false,
      home:  Intropage()
  
      
     
      );
    }
   
  }



