import 'package:flutter/material.dart';
import 'package:newproject/components/loginImageTile.dart';
import 'package:newproject/components/mytextfield.dart';
import 'package:newproject/components/signinbutton.dart';
import 'package:newproject/pages/homepages/homepage.dart';
import 'package:newproject/pages/homepages/shoppage.dart';

class Loginpage extends StatelessWidget {
   Loginpage({super.key});
  final usernamecontroller =TextEditingController();
  final passwordcontroller =TextEditingController(); 

  

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child:  Column(
          children: [
            const SizedBox(height: 50,),

            //logo
            const Icon(Icons.lock,size: 100,color: Colors.black,),

            //text description
            const SizedBox(height: 25,),
            const Text("Welcome back you've been missed"),

            //textfields
             const SizedBox(height: 25,),
            Mytextfield(
              controller: usernamecontroller,
              hinttext: 'Name',
              obscuretext: false,
            ),
             const SizedBox(height: 10,),
            Mytextfield(
              controller: passwordcontroller,
              obscuretext: true,
              hinttext: 'password',
            ),


            //forgot password
           
            const Padding(
              padding:  EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?'),
                ],
              ),
            ),

            //signin button
            const SizedBox(height: 25,),
            Signinbutton(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => const Homepage(),))

            ),

            SizedBox(height: 25,),

            Text('or proceed with'),

            //logo google apple
            SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Loginimagetile(imagepath: 'lib/images/google.png',),
                  SizedBox(width: 20,),
            Loginimagetile(imagepath: 'lib/images/apple1.png',)


              ],
            )
          
            //register now option
           
          ],
        ),
        
      ),
      
    );
   
  }
}