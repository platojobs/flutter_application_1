import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product_list"),
      ),
      body: BodyContent(),
    );
  }
}

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       ProductItem("jobs","su777su7su7su7su7su7su7", "https://inews.gtimg.com/om_bt/OuevRi3lDJoCccAqM17UARGbNlk9CRf3pGPv7He7zA8yYAA/1000"),
       const SizedBox(height: 10,),
       ProductItem("jobsWWW","supsup7099970999", "https://inews.gtimg.com/om_bt/OuevRi3lDJoCccAqM17UARGbNlk9CRf3pGPv7He7zA8yYAA/1000"),
       const SizedBox(height:10),
       ProductItem("MMMjobs","su777", "https://inews.gtimg.com/om_bt/OuevRi3lDJoCccAqM17UARGbNlk9CRf3pGPv7He7zA8yYAA/1000"),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;
  ProductItem(this.title, this.desc, this.imageUrl);

final style1 = TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold);
final style2 = TextStyle(fontSize: 15,color: Colors.black87);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12,width: 10),
         borderRadius: BorderRadius.circular(20)
         ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: style1,),
        const SizedBox(height: 10,),
        Text(desc,style: style2,),
        const SizedBox(height: 10,),
        Image.network(imageUrl),
      ],
    ),
    );
  }
}
