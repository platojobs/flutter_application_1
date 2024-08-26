import 'package:flutter/material.dart';

class TableTT extends StatelessWidget {
  const TableTT({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        columnWidths: const {
          0: FixedColumnWidth(100.0),
          1: FixedColumnWidth(40.0),
          2: FixedColumnWidth(80.0),
          3: FixedColumnWidth(80.0),
        },
        border: TableBorder.all(
            color: Colors.green,
            width: 2,
            style: BorderStyle.solid,
            //左上角为圆角
            borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
        ),
        children: const [
          TableRow(
            children: [
              Text("Name:"),
              Text("Sex:"),
              Text("Age:"),
              Text("Birthday:")
            ],
          ),
          TableRow(
            children: [Text("张三"), Text("男"), Text("24"), Text("1999-12-10")],
          ),
          TableRow(
            children: [Text("李四"), Text("女"), Text("20"), Text("2003-10-1")],
          )
        ],
      ),
    );
  }
}
