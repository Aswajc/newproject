import 'package:flutter/material.dart';

class Home1page extends StatelessWidget {
  const Home1page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.grey,
      elevation: 0,
      leading: IconButton(onPressed: (){

      },
       icon:const Icon(Icons.menu)),),
      body: const Column(
        children: [],
      )
    );
  }
}