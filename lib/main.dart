// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:newproject/models/cart.dart';
import 'package:newproject/pages/homepages/intropage.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {  
   return   ChangeNotifierProvider(create:(context) => Cart(),
   child:  const MaterialApp(
       debugShowCheckedModeBanner: false,
      home:  Intropage()
      ),);
    }
   
  }



