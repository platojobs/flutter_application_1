import 'package:flutter/material.dart';

import 'LinkedLabelCheckbox.dart';

class CheckboxListTileDemo extends StatefulWidget {
  const CheckboxListTileDemo({super.key});

  @override
  State<CheckboxListTileDemo> createState() => _CheckboxListTileDemoState();
}

class _CheckboxListTileDemoState extends State<CheckboxListTileDemo> {
  var ischeck1 = false;
  var ischeck2 = false;
  var ischeck3 = false;
  var ischeck4 = false;
  var ischeck5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxListTile"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            value: ischeck1,
            activeColor: Colors.deepOrangeAccent,
            title: Text("CheckboxListTile",style: TextStyle(color: Colors.deepOrangeAccent)),
            subtitle: Text("Supporting text",style: TextStyle(color: Colors.grey)),
            secondary: Icon(Icons.four_g_mobiledata,size: 40,color: Colors.orange,),

            onChanged: (bool? value) {
               setState(() {
                 ischeck1 = value!;
               });
            },
          ),
          Divider(height: 0,),
          CheckboxListTile(
            value: ischeck2,
            activeColor: Colors.deepOrangeAccent,
            title: Text("CheckboxListTile2",style: TextStyle(color: Colors.deepOrangeAccent),),
            subtitle: Text("Longer supporting text to demonstrate how the "
                "text wraps and how setting 'CheckboxListTile.isThreeLine = true' "
                "aligns the checkbox to the top vertically with the text",style: TextStyle(color: Colors.grey),),
            secondary: Icon(Icons.four_g_plus_mobiledata,size: 40,color: Colors.orange,),
            onChanged: (bool? value) {
              setState(() {
                ischeck2 = value!;
              });
            },
          ),
          Divider(height: 0,),
          CheckboxListTile(
            value: ischeck3,
            activeColor: Colors.deepOrangeAccent,
            title: Text("CheckboxListTile3",style: TextStyle(color: Colors.deepOrangeAccent)),
            subtitle: Text("Longer supporting text to demonstrate how "
                "the text wraps and the checkbox is centered vertically "
                "with the text",style: TextStyle(color: Colors.grey)),
            secondary: Icon(Icons.five_g,size: 40,color: Colors.orange,),
            onChanged: (bool? value) {
              setState(() {
                ischeck3 = value!;
              });
            },
          ),
          Divider(height: 0,),
          LinkedLabelCheckbox(
            label: "Linked, tappable label text",
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            value: ischeck4,
            onChanged: (value){
              setState(() {
                ischeck4 = value;
              });
            },
          ),
          ListTileTheme(
            textColor: Colors.blueAccent,
            selectedColor: Colors.red,
            child: ListTile(
              selected: ischeck5,
              title: Text("ListTileTheme"),
              onTap: (){
                setState(() {
                  ischeck5 = !ischeck5;
                });
              },
            ),


          ),



        ],
      ),
    );
  }
}
