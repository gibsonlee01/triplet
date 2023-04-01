import 'package:flutter/material.dart';


class Bottom extends StatelessWidget {
  Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      child: Container(height: 50 ,
        child: TabBar(
          tabs:<Widget> [
            Tab(
              icon: Icon(Icons.home,size: 18,),
              child: Text('트리플렛',style: TextStyle(fontSize: 9),),
            ),
            Tab(
              icon: Icon(Icons.lightbulb,size: 18,),
              child: Text('솔루션',style: TextStyle(fontSize: 9),),
            ),
            Tab(
              icon: Icon(Icons.work , size: 18,),
              child: Text('포트폴리오',style: TextStyle(fontSize: 9),),
            ),Tab(
              icon: Icon(Icons.question_answer,size: 18,),
              child: Text('문의하기',style: TextStyle(fontSize: 9),),
            ),

          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor:Colors.transparent,
        ),),
    );
  }
}
