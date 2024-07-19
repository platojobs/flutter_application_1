import 'package:flutter/material.dart';
//import 'package:flutter_application_1/secondRoute.dart';

class FirstPage extends StatelessWidget { 
  const FirstPage({super.key,required this.todos});
  final List<Item> todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(todos[index].title),
            subtitle: Text(todos[index].name),
            trailing: Icon(Icons.delete),
            onTap: () {
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}

class Item {
  var name = "";
  var title = "";
  var index = 0;
  Item({required this.name, required this.title, required this.index});
}



