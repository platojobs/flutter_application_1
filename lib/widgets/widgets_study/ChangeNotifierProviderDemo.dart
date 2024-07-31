import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/utils/changeNotifierProvider.dart';


class Item{
  Item(this.price,this.count,this.name);
  double price;
  int count;
  String name;
}

class ShopCartModel extends ChangeNotifier {

  final List<Item> _items = [];
  
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
  double get totalPrice => _items.fold(0, (value,item) => value + item.count*item.price);
  void add(Item item){
    _items.add(item);
    notifyListeners();
  }
}


class MMShareDataProviderRoute extends StatefulWidget {
  const MMShareDataProviderRoute({super.key});

  @override
  State<MMShareDataProviderRoute> createState() => _MMShareDataProviderRouteState();
}

class _MMShareDataProviderRouteState extends State<MMShareDataProviderRoute> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider(
        data: ShopCartModel(), 
        child: Builder(builder: (context){
          return Column(
            children: [
             Consumer<ShopCartModel>(builder: (context,cart)=> Text("total:${cart?.totalPrice}")),
              Builder(builder: (context){
                print("object");

                return ElevatedButton(onPressed: (){

                  ChangeNotifierProvider.of<ShopCartModel>(context,listen: false)?.add(Item(10.1, 10, "name"));

                }, child: const Text("add"));
              }),
              
            ],
          );
        },
        ),
      ),
      
      
    );
  }
}

class Consumer<T> extends StatelessWidget {
  const Consumer({super.key ,required this.builder});
  final Widget Function(BuildContext context,T? child) builder;
  @override
  Widget build(BuildContext context) {
    return builder(context,ChangeNotifierProvider.of<T>(context));
  }
}
