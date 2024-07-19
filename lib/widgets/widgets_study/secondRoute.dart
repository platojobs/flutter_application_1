import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstRoute.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
      ),
      body: Center(
        child: ElevatedButton(
           
            onPressed: () {

            //  Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return const FirstPage();
            //   }));
            },
            child: const Text("button2")),
      ),
    );
  }
}