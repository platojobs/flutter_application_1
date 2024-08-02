
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class MMAletView extends StatelessWidget {
  MMAletView({super.key});
  final names = generateWordPairs().take(20).map((e)=> e.asPascalCase).toList();
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () async {
      /* 第一个
      bool? delete = await showAlertView(context);
      if (delete == null) {
        print("取消删除");
      } else {
        print("已确认删除");
        //... 删除文件
      }
      */

      /*第二个
      int? changelanguage = await changlanguage(context);
      print(changelanguage);
      if(changelanguage==1){
        print("中文");
      }else if(changelanguage==2){
        print("英文");
      }
      */

      // 第三个
      int? selectwordsIndex = await showlistAlert(context, names,null);
      if (selectwordsIndex != null){
        print(names[selectwordsIndex]);
      }
    },
      child: Text("弹框"),

    );
  }
}

//提示框
Future<bool?>showAlertView(BuildContext context){

  return showDialog<bool>(context:context, builder: (context){

    return  AlertDialog(
      title: const Text("提示"),
      content: const SingleChildScrollView(
        child: Center(child: Text("景山、故宫、天安门，承载了很多人对北京最初的印象，也是许多学生暑假的热门打卡地。"
            "把它们串联起来，向北至钟鼓楼，往南到永定门，"
            "这条7.8公里的北京中轴线，被称作“北京老城的脊梁和灵魂”。"
            "北京中轴线位于北京老城中心，始建于13世纪，成型于16世纪，"
            "此后不断完善，历经逾7个世纪，形成了秩序井然、气势恢宏的城市建筑群。"
            "这条中轴线不仅见证了古都北京的时代嬗变，更见证了文化的薪火相传。"
            "2013年12月，习近平总书记在中央城镇化工作会议上指出：“我们的城市有许多历史记忆，"
            "特别是一些历史悠久的老城区，是最宝贵的东西，不能因为浮躁、无知而破坏掉。”两个多月后，"
            "总书记在北京考察时强调，“历史文化是城市的灵魂，要像爱惜自己的生命一样保护"
            "好城市历史文化遗产”“处理好城市改造开发和历史文化遗产保护利用的关系”。坚持“在保护中发展、在发展中保护”，"
            "北京为申遗付出不懈努力。在几天前的联合国教科文组织第46届世界遗产大会上，“北京"
            "中轴线——中国理想都城秩序的杰作”成功列入《世界遗产名录》。")),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("取消"),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text("删除"),
          onPressed: () {
            //关闭对话框并返回true
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );

  });

}

//选择语言的弹窗
Future<int?> changlanguage(BuildContext context){
    return showDialog<int>(context: context, builder: (context){
        return SimpleDialog(
          title: const Text("选择语言"),
          children: [
            SimpleDialogOption(
              onPressed: (){
                Navigator.pop(context,1);
              },
              child:const  Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text("中文"),
              ),
            ),
         SimpleDialogOption(
         onPressed: (){
         Navigator.pop(context,2);
        },
        child:const  Padding(
        padding: EdgeInsets.symmetric(vertical: 6),
        child:  Text("英文"),
        ),
        ),
          ],
        );
    });
}

Future<int?>showlistAlert(BuildContext context,List<String> names , int? defaultindex){
  return showDialog(context: context, builder: (context){
    return Dialog(
      child: Column(
        children: [
          ListTile(title: Text("请选择"),),
          Expanded(child:ListView.builder(
              itemCount: names.length,
              itemBuilder: (context,index){
                return ListTile(title: Text("${names[index]}+ $index"),
                  trailing: (defaultindex != null&& index == defaultindex)?Icon(Icons.check_box,color: Colors.blue,):null,
                  onTap: (){
                  defaultindex = index;
                  print(defaultindex);
                  Navigator.of(context).pop(index);
                  },
                );
              })
          ),
        ],
      ),
    );
  });

}


class MMDefaultListSectView extends StatefulWidget {
  const MMDefaultListSectView({super.key});

  @override
  State<MMDefaultListSectView> createState() => _MMDefaultListSectViewState();
}

class _MMDefaultListSectViewState extends State<MMDefaultListSectView> {
  final names = generateWordPairs().take(20).map((e)=> e.asPascalCase).toList();
   int? selectwordsIndex;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () async {
      // 第三个
      selectwordsIndex = await showlistAlert(context, names,selectwordsIndex);
      if (selectwordsIndex != null){
        print(names[selectwordsIndex!]);
      }
      setState(() {
        print("$selectwordsIndex"+"state");
      });
    },
      child: Text(selectwordsIndex==null?"弹框":names[selectwordsIndex!],),
    );
  }
}
