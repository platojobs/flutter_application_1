import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_pprotapp/appMac/app_config.dart';
import 'package:flutter_pprotapp/generated/l10n.dart';


const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: "FlutterDemo",
      theme: ThemeData(
        brightness: Brightness.light, //深色还是浅色
        primarySwatch: Colors.blue, //主题色样本
        primaryColor: Colors.red, //决定导航栏的颜色
        cardColor: Colors.black, //卡片的颜色
        dividerColor: Colors.green, //分割线的颜色
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.accent,
          buttonColor: Colors.blue,
        ),
        fontFamily: "Oswald",
      ),
      routes: AppConfig.routsMap(context),
      initialRoute: "home",

      // home:  const HomeRoute(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("ListView"),
      //   ),
      //   body: const HomeRoute(),
      // ),
    );
  }
}

class TDemoLocalizationsDelegate {
  const TDemoLocalizationsDelegate();
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: InputBorder.none,
                hintText: 'Enter your email',
                labelText: '邮箱',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            autocorrect: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                border: InputBorder.none,
                hintText: 'Enter your password',
                labelText: '密码',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                )),
          ),
        ],
      ),
    );
  }
}
