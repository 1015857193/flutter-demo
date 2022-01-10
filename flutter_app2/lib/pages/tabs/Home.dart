import 'package:flutter/material.dart';
import '../../components/MyDialog.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('跳转到轮播图页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/swiper',arguments: {"desc":"轮播图页面"});
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('跳转到Dialog页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/dialog');
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('显示自定义Dialog'),
              onPressed: (){
                  // print("显示自定义组件");

                  showDialog(
                    context: context,
                    builder: (context){
                      return MyDialog(
                        title:"关于我们",
                        content:"关于我们"
                      );
                    }
                  );
              },
            )         
        ]
      ),
    );
  }
}
