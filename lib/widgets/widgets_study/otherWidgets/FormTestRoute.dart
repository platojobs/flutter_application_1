import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  const FormTestRoute({super.key});

  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _usenameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  GlobalKey _formkay = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkay,
      child: Column(
        children: [
          TextFormField(
              controller: _usenameController,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "用户名不能为空";
                }
                return null;
              }),
          TextFormField(
            controller: _pwdController,
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "请输入密码",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (pwd) {
              return pwd!.trim().length > 5 ? null : "密码不能小于6位";
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,left: 15,right: 15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      child: Text("登录",style: TextStyle(fontSize: 20,color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {
                        if ((_formkay.currentState as FormState).validate()) {
                          debugPrint("用户名：${_usenameController.text}");
                          debugPrint("密码：${_pwdController.text}");
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
