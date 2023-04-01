import 'package:flutter/material.dart';

import '../widget/porfol_slider.dart';
import 'home_screen.dart';

class Portfol extends StatefulWidget {
  Portfol({Key? key}) : super(key: key);

  @override
  _PortfolState createState() {
    return _PortfolState();
  }
}

class _PortfolState extends State<Portfol> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BodyScreen();
  }
}

Widget BodyScreen(){
  return Column(
    children: [
      Container(height: 50,),
      Container(child: Text('Portfolio',style: TextStyle(
        fontFamily: 'Oswald',
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),),),
      Container(height: 40,),
      MyPortfolioSlider()

    ],
  );
}