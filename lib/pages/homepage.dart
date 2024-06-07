import 'package:flutter/material.dart';
import 'package:newproject/util/dialoguebox.dart';
import 'package:newproject/util/todotile.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});
 

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   List ToDoList=[
    ['go and run',true],
    ['grocery shopping',false],
    ['go and run fast ',false],

  ];
  void Checkbox(bool? value,int index){
    setState(() {
      ToDoList[index][1]= !ToDoList[index][1];
    });
  }
  void createTask(){
    showDialog(context: context, builder: (context){
      return const 
      
      Dialoguebox();
    });
    

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 237, 79),
      appBar: AppBar(title:const Text('To Do List',
      style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 255, 230, 0),
      //leading:const Icon(Icons.arrow_back),
      ),
      body: ListView.builder(itemCount:ToDoList.length,
      itemBuilder: (context, index) {
        return Todotile(tileName: ToDoList[index][0],
         onChanged:(value) => Checkbox(value,index), 
         taskcomplete: ToDoList[index][1]);
      },),
      floatingActionButton: FloatingActionButton(onPressed:createTask,
      child:const Icon(Icons.add),),
    );
  }
}