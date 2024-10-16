

import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget {
  const WillPopScopeDemo({super.key});

  @override
  State<WillPopScopeDemo> createState() => _WillPopScopeDemoState();
}

class _WillPopScopeDemoState extends State<WillPopScopeDemo> {

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked:(e){
        if(e){
          //can
        }else{
          // can not
        }
      },
      child: const Center(
      child: Text("导航拦截"),
    ),


    );
  }
}
