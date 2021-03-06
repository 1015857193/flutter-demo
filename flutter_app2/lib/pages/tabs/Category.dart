import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {


  List list;
  Map map;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    list = ["1","2","3","4","5"];

     map = {0: 'apple', 1: 'orange', 2: 'mango'};


  }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:TabBar(
                    isScrollable:true,  //如果多个按钮的话可以滑动
                    indicatorColor:Colors.yellow,
                    labelColor:Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    indicatorSize:TabBarIndicatorSize.label ,
                    
                    tabs: <Widget>[
                      Tab(text: "推荐0"),
                      Tab(text: "推荐1"),
                      Tab(text: "推荐2"),
                      Tab(text: "推荐3"),
                      Tab(text: "热销4"),
                      Tab(text: "推荐5"),
                      Tab(text: "推荐6"),
                      Tab(text: "推荐7")
                    ],
               ) ,
              )
            ],
          ),
          
        ),
        body:TabBarView(
          children: <Widget>[

            ListView(
              children: list.map((e) => ListTile(title:Text(e))).toList(),
            ),
            // ListView(
            //   children: map.forEach((key, value) => ListTile(title:Text(value)))
            // ),
            //
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第三个tab")
                  ),
                  ListTile(
                    title:Text("第三个tab")
                  ),                 
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第四个tab")
                  ),
                  ListTile(
                    title:Text("第四个tab")
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第五个tab")
                  ),
                  ListTile(
                    title:Text("第五个tab")
                  ),
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第六个tab")
                  ),
                  ListTile(
                    title:Text("第六个tab")
                  ),                  
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第七个tab")
                  ),
                  ListTile(
                    title:Text("第七个tab")
                  )
                ],
              ),
            ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第八个tab")
                  ),
                  ListTile(
                    title:Text("第八个tab")
                  )
                ],
              )
          ],
        )
      ),
    );
  }
}