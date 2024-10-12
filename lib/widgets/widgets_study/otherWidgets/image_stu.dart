import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        color: Colors.grey,
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Image>[
        Image.asset("assets/images/test.jpeg",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Image.network("https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const Image(
          image: AssetImage("assets/images/test.jpeg"),
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ].map((image) {
            return Row(

              children: <Widget>[
                Padding(padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 100,
                  child: image,
                ),
                ),
                Text(image.fit.toString()),
              ],
            );
          }).toList(),
        ));
  }
}
