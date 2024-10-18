import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class SampleDemo4 extends StatefulWidget {
  const SampleDemo4({super.key});

  @override
  State<SampleDemo4> createState() => _SampleDemo4State();
}

class _SampleDemo4State extends State<SampleDemo4> {

  late String?  _imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SampleDemo4"),
      ),
      body: Center(
        child: OutlinedButton(onPressed: ()async{
          var image = await ImagePicker().pickImage(source: ImageSource.gallery);
          setState(() {
            _imagePath = image?.path;
            debugPrint(_imagePath);
          });
        },
        child: SizedBox(
            height: 40,
            width: 40,
            child: Image.network("https://img0.baidu.com/it/u=2735904299,1592700273&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800"))
        ),
      ),
    );
  }
}
