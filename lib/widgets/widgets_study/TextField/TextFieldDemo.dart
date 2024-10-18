import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                   // label: Text("data"),
                    labelText: "name",
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (String value) async {
                    await showDialog(
                        context: context,
                        builder: (BuildContext contex) {
                          return AlertDialog(
                            title: Text("温馨提示"),
                            content: Text('你输入了"$value", 它有${value.characters.length}个字符.'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    debugPrint("输入内容:${nameController.text}");
                                    Navigator.pop(contex);
                                  },
                                  child: Text("确定"))
                            ],
                          );
                        });
                  },
                ),
              )
            ],
          ),
        ));
  }
}
