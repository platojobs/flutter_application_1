import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: const Text("button"));
  }
}



/*

ElevatedButton(onPressed: () {}, child: const Text("button")),
          TextButton(
            child: const Text("normal"),
            onPressed: () {},
          ),
          OutlinedButton(child: const Text("normal"), onPressed: () {}),
          IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text("详情按钮")),
          Image.asset(
            "assets/images/test.jpeg",
            width: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage("assets/images/test.jpeg"),
            width: 100,
          ),
          Image.network(
            imageurl,
            width: 100,
          ),
          Image(image: NetworkImage(imageurl),width: 50,),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(imageurl),
          ),
          //字体图标
          const Text("\uE03e \uE237 \uE287",style: TextStyle(fontFamily: "MaterialIcons",fontSize:24,color: Colors.green ),),
          //Flutter封装了IconData和Icon来专门显示字体图标
          const Icon(Icons.accessible,color: Colors.green, size: 50,),
          const Icon(Icons.error,color: Colors.green,size: 50,),


*/
