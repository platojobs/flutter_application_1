import 'package:flutter/material.dart';

class OffStageWG extends StatefulWidget {
  const OffStageWG({super.key});

  @override
  State<OffStageWG> createState() => _OffStageWGState();
}

class _OffStageWGState extends State<OffStageWG> {
  var stage = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Offstage(
            offstage: stage, //为true，表示不显示
            child: const Text("我出现了",style: TextStyle(
              fontSize: 20,color: Colors.green
            ),),
          ),
          OutlinedButton(onPressed: (){
            setState(() {
              stage = !stage;
            });
          }, child: const Text("点击-控制是否显示"))
        ],
      )
    );
  }
}
