
import 'package:flutter/material.dart';


Type _typeOf<T>() => T;

class InheritedProvider<T> extends InheritedWidget {

  const InheritedProvider({super.key,required this.data,required super.child});

  final T data;

  @override
  bool updateShouldNotify(covariant InheritedProvider oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  const ChangeNotifierProvider({super.key,required this.data,required this.child});

  final T data;
  final Widget child;

  static T? of<T>(BuildContext context,{bool listen = true} ){
    final type = _typeOf<InheritedProvider<T>>();
    debugPrint("数据共享保存的类型type: ${type.toString()}");
    final provider =listen?context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>():context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>()?.widget as InheritedProvider<T> ;
    return provider?.data;
  }

  @override
  State<ChangeNotifierProvider> createState() => _ChangeNotifierProviderState<T>();
}

class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>> {

  void update(){
    setState(() {
    });
  }

  @override
  void didUpdateWidget(covariant ChangeNotifierProvider<T> oldWidget) {
    // TODO: implement didUpdateWidget
    if(widget.data != oldWidget.data){
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    // TODO: implement initState
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider(data: widget.data, child: widget.child);
  }
}
