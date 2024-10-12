import 'package:flutter/material.dart';

class MultipleChoiceSegMent extends StatefulWidget {
  const MultipleChoiceSegMent({super.key, required this.titles, required this.defaultSelect, this.onSelectionChanged});
  final Set<String> titles;
  final Set<String> defaultSelect;
  final void Function(Set<String>)? onSelectionChanged;
  @override
  State<MultipleChoiceSegMent> createState() => _MultipleChoiceSegMentState();
}

class _MultipleChoiceSegMentState extends State<MultipleChoiceSegMent> {
  Set<String> selection = {} ;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: widget.titles!.toList().map(
              (index)=>ButtonSegment(value: index,label: Text(index)
          )
      ).toList(),
      selected: selection.isEmpty ?widget.defaultSelect:selection,
      onSelectionChanged: (Set<String> newselection){

        setState(() {
          selection = newselection;
          widget.onSelectionChanged!(selection);
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
