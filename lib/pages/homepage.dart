import 'package:flutter/material.dart';
import 'package:newproject/components/bottom_nav_bar.dart';
import 'package:newproject/pages/cartpage.dart';
import 'package:newproject/pages/home1page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex=0;

 void NavigationBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> pages =[
    Home1page(),
    Cartpage()

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavBar(onTabChange:(index) => NavigationBar(index),),
      body: pages[_selectedIndex]
      
    );
  }
}