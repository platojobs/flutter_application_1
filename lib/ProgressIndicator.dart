import 'package:flutter/material.dart';

class SProgressIndicator extends StatelessWidget {
  const SProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      
      SizedBox(
        height: 20,
        child: LinearProgressIndicator(
          color: Colors.red,
          value: .5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          backgroundColor: Colors.grey,
        ),
      ),
      SizedBox(
          height: 25,
      ),
      SizedBox(
        height: 200,
        width: 200,  // 宽高不同会显示为椭圆
        child: CircularProgressIndicator(
          value:.5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          backgroundColor: Colors.grey,
          strokeWidth: 15,
        ),
      )
      
      
      
      
      ],


    );
  }
}
