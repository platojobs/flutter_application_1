import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFromWidget extends StatefulWidget {
  const MyFromWidget({super.key});

  @override
  State<MyFromWidget> createState() => _MyFromWidgetState();
}

class _MyFromWidgetState extends State<MyFromWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var user = TextEditingController();
  var password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              controller: user,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                prefixIcon: const Icon(Icons.account_circle),
                suffixIcon: const Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "用户名不能为空";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "密码不能为空";
                }
                if (value.length < 6) {
                  return "密码长度不能小于6位";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: () {
                    if ((_formKey.currentState as FormState).validate()) {
                      //验证通过提交数据
                      
                      
                      print(user.text);
                      print(password.text);
                    }
                  },
                  child: const Text(
                    "登录",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                )),
          ],
        ));
  }
}
