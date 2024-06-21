import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  GNav(tabs:const[
         GButton(icon: Icons.home,
        text: "SHOP",),
         GButton(icon: Icons.food_bank,
        text: "CART",)

      ],
      color: Colors.grey,
      activeColor: Colors.black,
      tabBackgroundColor: Colors.grey,
      mainAxisAlignment: MainAxisAlignment.center,
     onTabChange: (value) => onTabChange!(value) ,
     ),


    );
  }
}