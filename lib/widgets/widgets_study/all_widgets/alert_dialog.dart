import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (contex) {
                    return AlertDialog(
                      title: Text("I'm AlertDialog"),
                      icon: FlutterLogo(),
                      contentPadding: EdgeInsets.all(20),
                      content: ListTile(
                        leading: TextButton(
                          onPressed: () {
                            Navigator.of(contex).pop();
                          },
                          child: Text("确定"),
                        ),
                        trailing: TextButton(
                          onPressed: () {
                            Navigator.of(contex).pop();
                          },
                          child: Text("取消"),
                        ),
                      ),
                    );
                  });
            },
            child: Text("showAlertDialog")),
      ),
    );
  }
}
