import 'package:flutter/material.dart';



class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ElevatedButton(
          onPressed: (){

         }, child: const Text("ElevatedButton",style: TextStyle(
          fontSize: 20,
          color: Colors.blue
         ),)
         ),

         ElevatedButton.icon(onPressed: (){

         }, label: 
           const Text("发送"),
           icon:const Icon(Icons.send),
         ),

         const SizedBox(height: 10,),
         TextButton(onPressed: (){

         }, child: const Text("TextButton")),
         
         TextButton.icon(onPressed: (){

         }, label:const Text("TextButton"),
           icon:const Icon(Icons.send),
         ),

         const SizedBox(height: 10,),
         OutlinedButton(onPressed: (){

         }, child: const Text("OutlinedButton")),


          OutlinedButton.icon(onPressed: (){

          }, label:const Text("OutlinedButton"),
             icon:const Icon(Icons.send),
          ),

         const SizedBox(height: 10,),
         IconButton(onPressed: (){

         }, icon:const  Icon(Icons.abc)),


      ],
    );
  }
}