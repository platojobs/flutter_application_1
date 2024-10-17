
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  //tabbar的使用
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
            tabAlignment: TabAlignment.start,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            controller: _tabController,
            indicatorColor: Colors.green,
            isScrollable: true,
            tabs: const [
              Tab(
                text: "分类1",
                icon: Icon(Icons.filter_1),
              ),
              Tab(
                text: "分类2",
                icon: Icon(Icons.filter_2),
              ),
              Tab(
                text: "分类3",
                icon: Icon(Icons.filter_3),
              ),
              Tab(
                text: "分类4",
                icon: Icon(Icons.filter_4),
              ),
              Tab(
                text: "分类5",
                icon: Icon(Icons.filter_5),
              ),
              Tab(
                text: "分类6",
                icon: Icon(Icons.filter_6),
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Card(
                  child: Text("Header0"),
                ),
              ),
              SliverList.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            // border: Border.all(width: 1,style: BorderStyle.solid),
                          ),
                          child: const Icon(
                            Icons.insert_comment,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "标题:$index",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("副标题:$index"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        onTap: (){
                          showModalBottomSheet(context: context, builder: (context){
                            return Container(
                              height: 180,
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.import_contacts_sharp)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.person)),

                                ],
                              ),
                            );
                          },
                            useSafeArea: true,

                          );
                        },
                      ),
                      Divider(
                        height: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  );
                },
              ),
              const SliverToBoxAdapter(
                child: Card(
                  child: Text("Footer0"),
                ),
              )
            ],
          ),
          Center(
            child: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  //shape:OutlineInputBorder(),

                  child: Text("Card"),
          )
              ),
            ),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}
