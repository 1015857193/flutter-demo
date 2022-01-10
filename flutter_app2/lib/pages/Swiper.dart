import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {

  final Map arguments;
  final String title;
  SwiperPage({Key key, this.title,this.arguments}) : super(key: key);

  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件演示'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              // width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: new Swiper(
                    layout: SwiperLayout.CUSTOM,
                    customLayoutOption:
                        new CustomLayoutOption(startIndex: -1, stateCount: 3)
                            .addRotate(
                                [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                      new Offset(-370.0, -40.0),
                      new Offset(0.0, 0.0),
                      new Offset(370.0, -40.0)
                    ]),
                    itemWidth: 300.0,
                    itemHeight: 200.0,
                    itemBuilder: (context, index) {
                      return buildContainer(index);
                    },
                    itemCount: imgList.length),
              ),
            ),
            Row(
              children: <Widget>[Text("${widget.arguments["desc"]}")],
            )
          ],
        ));
  }

  Container buildContainer(int index) {
    return new Container(
      // color: Colors.grey,
      child: new Center(
          child: Image.network(
        imgList[index]['url'],
        fit: BoxFit.contain,
      )),
    );
  }
}
