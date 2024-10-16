

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MMGridView extends StatelessWidget {
    MMGridView({super.key});
  final names = generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();

  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
           mainAxisSpacing: 10,//主轴的间距
           crossAxisCount: 3, //横轴的个数
           crossAxisSpacing: 8, //横轴的间距
           childAspectRatio: 1.2 //宽高比
        ),
      children: List.generate(names.length, (e) => Container(
        color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        child: ListTile(title: Text(names[e]),),
      )),

    );
  }
}


class PJGridView extends StatelessWidget {
   PJGridView({super.key});
  final names = generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();

  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 150,
      childAspectRatio: 1.0,
    ),
      children: List.generate(names.length, (e) => Container(
        color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        child: ListTile(title: Text(names[e]),),
      )),

    );
  }
}

//GridView.count内部实现SliverGridDelegateWithFixedCrossAxisCount
//横轴个数的GridView
class PJGridViewWithCount extends StatelessWidget {
   PJGridViewWithCount({super.key});
   final names = generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();

   @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: List.generate(names.length, (e) => Container(
        color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        child: ListTile(title: Text(names[e]),),
      )),
    );
  }
}

//GridView.extent内部实现了SliverGridDelegateWithMaxCrossAxisExtent
//固定最大长度的GridView
class PJGridViewWithExrtend extends StatelessWidget {
   PJGridViewWithExrtend({super.key});
  final names = generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 100,
        childAspectRatio: 1.2,
       children: List.generate(names.length, (e) => Container(
         color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
         child: ListTile(title: Text(names[e]),),
       )),
    );
  }
}


class PJGridViewWithBuilder extends StatelessWidget {
   PJGridViewWithBuilder({super.key});
   final names = generateWordPairs().take(50).map((e)=> e.asUpperCase).toList();

   @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1.2,
    ),
        itemBuilder: itemBuilder,
        itemCount: names.length,
    );
  }

  Widget itemBuilder(BuildContext context , int index) => Container(
    color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
    child: ListTile(
      title: Text(names[index]),
  ),
  );


}
