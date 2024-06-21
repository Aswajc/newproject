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
    const Home1page(),
    const Cartpage()

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
       appBar: AppBar(
        backgroundColor: Colors.grey[200],
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          },
           icon:const Icon(Icons.menu));
        }
      ),),
       drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
            
            children: [
               Padding(
              padding: const EdgeInsets.all(20.0),
              child: DrawerHeader(child: 
              Image.asset('lib/images/puma main.png',)),
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("HOME",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
                ),),
              
              ),
            ),

             const Padding(
              padding:  EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text("ABOUT",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
                ),),
              
              ),
            ),

            ],
           ),
            const Padding(
              padding:  EdgeInsets.only(left: 25,bottom: 10),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("LOGOUT",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
                ),),
              
              ),
            ),
          ],
          
        ),

        
       ),
      bottomNavigationBar: BottomNavBar(onTabChange:(index) => NavigationBar(index),),
      body: pages[_selectedIndex]
      
    );
  }
}