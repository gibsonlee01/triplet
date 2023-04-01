import 'package:flutter/material.dart';
import 'package:triplet/widget/carousel_slider.dart';


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
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
        TopBar(),
          Container(height: 70,),
          MyCarouselSlider(),

        ],
  );
}



class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme =Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              //padding: EdgeInsets.only(right:0.5),
              child: Text('Triplet', style: textTheme.headline1,),
            ),
          ]
      ),
    ) ;
  }
}
