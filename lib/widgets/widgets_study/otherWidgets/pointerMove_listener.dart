

import 'package:flutter/material.dart';

class PointerMove extends StatefulWidget {
  const PointerMove({super.key});

  @override
  State<PointerMove> createState() => _PointerMoveState();
}

class _PointerMoveState extends State<PointerMove> {
  PointerEvent? _event;
  @override
  Widget build(BuildContext context) {
    return Listener(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: AbsorbPointer(
          child:Listener(
            child: Text(
              "${_event?.localPosition ?? "--"} + ${_event?.delta ??"-7-"}",
              style: const TextStyle(color: Colors.black45),
            ),
            onPointerDown: (PointerDownEvent event) => debugPrint("hello"), // 不接受事件
          )
        )
      ),
      onPointerDown: (PointerDownEvent event) =>setState(() {
        _event = event;
      }),
      onPointerMove: (PointerMoveEvent event) =>setState(() {
        _event = event;
      }),
      onPointerUp: (PointerUpEvent event) =>setState(() {
        _event = event;
      }),
    );
  }
}
