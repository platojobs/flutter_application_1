
import 'package:flutter/material.dart';

import 'PJButtonBackGroundColor.dart';

class SingleChoiceSegment extends StatefulWidget {
  const SingleChoiceSegment({super.key, required this.titles ,required this.defaultSelect ,required this.onSelectionChanged});
  final Set<String> titles;
  final String defaultSelect;
  final void Function(String)? onSelectionChanged;
  @override
  State<SingleChoiceSegment> createState() => _SingleChoiceSegmentState();
}

class _SingleChoiceSegmentState extends State<SingleChoiceSegment> {
  var selction;
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.defaultSelect);
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width*2/3,
      child: SegmentedButton(
          style: ButtonStyle(
              backgroundColor:
              PJButtonBackGroundColor(context, Colors.white),
              foregroundColor:
              PJButtonBackGroundColor(context, Colors.black)
          ),
          expandedInsets: const EdgeInsets.all(0),
          segments: widget.titles.toList().map(
                  (index)=>ButtonSegment(value: index,label: Text(index,style:TextStyle(
                    fontSize: 10,
                  ),)
                  )
          ).toList(),
          selected: selction == null ?<String>{widget.defaultSelect}:<String>{selction},
          onSelectionChanged: (Set<String> newselection){

            setState(() {
              selction = newselection.first;
              widget.onSelectionChanged!(selction);
            });
        },
      ),
    );

  }
}
