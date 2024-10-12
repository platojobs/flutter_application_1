



import 'package:flutter/material.dart';

class StateMutilManage extends StatefulWidget {
  const StateMutilManage({super.key});

  @override
  State<StateMutilManage> createState() => _StateMutilManageState();
}

class _StateMutilManageState extends State<StateMutilManage> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue){
      setState(() {
        _active = newValue;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("状态管理"),
      ),
      body: TapBoxSubManage(
        active: _active,
        onChanged: _handleTapBoxChanged,
      ),
    );
  }
}



class TapBoxSubManage extends StatefulWidget {
  const TapBoxSubManage({super.key, this.active = false, required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;


  @override
  State<TapBoxSubManage> createState() => _TapBoxSubManageState();
}

class _TapBoxSubManageState extends State<TapBoxSubManage> {

  bool _highlight = false;

  void _tapDown(TapDownDetails details){
    setState(() {
      _highlight = true;
    });
  }

  void _tapUp(TapUpDetails details){
    setState(() {
      _highlight = false;
    });
  }

  void _tapCancel(){
    setState(() {
      _highlight = false;
    });
  }

  void _tap(){
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTap: _tap,
      onTapCancel: _tapCancel,
      child: Container(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            widget.active?"active":"Inactive",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700]:Colors.grey[600],
          border: _highlight? Border.all(
            color: Colors.teal[700]!,
            width: 10,
          ): null,
        ),
      ),
    );
  }
}


