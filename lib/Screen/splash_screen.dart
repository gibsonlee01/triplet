import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children: [
                Container(height: 150,),
                Image.asset('asset/image/triplet_logo.png'),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.black),
                ),
                Container(height: 200,),
                Text('Triplet Design New Humanity',style: TextStyle(fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,color: Colors.black),),

              ],

            ),
          ]
        ),
      ),
    );
  }
}
