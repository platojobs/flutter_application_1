import 'package:flutter/material.dart';

class SpacedItemsList extends StatelessWidget {
  const SpacedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(18, (index) {
              return STextItem(text: "$index");
            }),
          ),
        ),
      );
    });
  }
}

class STextItem extends StatelessWidget {
  const STextItem({super.key,
  required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      
      elevation: 10,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Text(
                "商品编号:$text",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),

      ),
    );
  }
}
