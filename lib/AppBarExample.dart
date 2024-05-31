import 'package:flutter/material.dart';


class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APPBar Demo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add,color: Colors.blue,),
            tooltip: "添加",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("你这是要添加呀？你可不能这样",style: TextStyle(color: Colors.red),),
                backgroundColor: Colors.white,
                showCloseIcon: true,
            
                
                ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit,color: Colors.blue,),
            tooltip: "Edit",
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder:(BuildContext context){
                return Scaffold(
                  appBar: AppBar(
                    title: const Text("编辑页"),
                  ),
                  body: const Center(
                    child: Text("这是编辑页呀",style: TextStyle(fontSize: 24,color: Colors.red),),
                  ),
                );
              }));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("appBar首页",style: TextStyle(fontSize: 30,color: Colors.black),),
      ),
    );
  }
}
