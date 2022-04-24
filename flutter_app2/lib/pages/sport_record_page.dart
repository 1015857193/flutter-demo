import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SportRecordMachine extends StatefulWidget{

  SportRecordMachine({Key key}) : super(key: key);

  @override
  _SportRecordMachineState createState() => new _SportRecordMachineState();


}


class _SportRecordMachineState extends State<SportRecordMachine> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  Widget _container(index){

    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('今天'),
          Row(
            children: [
              Text('图标'),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('划行12公里  10：25'),
                   Text('用时00:45:25  消耗355 Kcal'),


                ],
              ),

              Spacer(),
              Container(
                color: Colors.red,
                // margin: EdgeInsets.only(right: 100),
                child: RaisedButton(
                  child: new Text('上传'),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 20),
            ],
          ),

          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            color: Colors.grey,
            height: 1,

          ),


        ],
      ),

    );
  }


 @override
  Widget build(BuildContext context) {
    // TODO: implement build

   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Colors.grey,
       title: Text('上传运动记录',style: TextStyle(
         color: Colors.black
       ))),
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            height: 5,
          ),
          Expanded(
            child: Container(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return _container(index);
                    })),
          ),
           RaisedButton(
            child: new Text('点我'),
            onPressed: () {},
          )
        ],
      ),
    );



  }

}