import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  const ChipDemo({super.key});

  @override
  State<ChipDemo> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  int inputs = 3;
  int? selectedIndex;
  int? _value = 1;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Chip(
                  backgroundColor: Colors.blueAccent,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.orange.shade800,
                    child: const Text('AB',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),),
                  ),
                  label: const Text('Aaron Burr'),
                ),
              ),
            ],
          ),
          Divider(height: 0,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Wrap(spacing: 5,
              children: List<Widget>.generate(
                inputs,
                    (int index) {
                  return InputChip(
                    label: Text('Person ${index + 1}'),
                    selected: selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        if (selectedIndex == index) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = index;
                        }
                      });
                    },
                    onDeleted: () {
                      setState(() {
                        inputs = inputs - 1;
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ),
          Divider(height: 0,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Wrap(
              spacing: 10,
              children:List<Widget>.generate(
                4,
                    (int index) {
                  return ChoiceChip(
                    label: Text('Item $index'),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : null;
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ),
          Divider(height: 0,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ActionChip(
                  avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
                  label: const Text('Save to favorites'),
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(height: 0,),
        ],
      ),
    );
  }
}
