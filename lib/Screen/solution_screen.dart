import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class Solution extends StatefulWidget {
  Solution({Key? key}) : super(key: key);

  @override
  _SolutionState createState() {
    return _SolutionState();
  }
}

class _SolutionState extends State<Solution> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
      Container(child: Text('Solution',style: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 40,
          fontWeight: FontWeight.bold
      ),),),
      Container(height: 30,),
      MySolSlider(),
      MySolSlider2(),

    ],
  );
}




class MySolSlider2 extends StatefulWidget {

  late List<String> imageList = [
    'asset/image/solu2.png',
    'asset/image/solu1.png',
  ];
  late List<String> captionTitleList = [
    // "대한민국 1등 할인점 'E-mart'",
    // "글로벌 제약회사 'Merck'",
    // "자산관리 전문 기업 '젠스타'",
    // "수제 맥주 '가나다라 브루어리'",
    // "스마트 대리운전 '파파부'"
    '','','','','',
  ];


  @override
  _MySolSlider2 createState() => _MySolSlider2();
}

class _MySolSlider2 extends State<MySolSlider2> {
  int _currentIndex = 0;
  List<String> imageList = [];
  List<String> captionTitleList=[];
  List<String> captionDescriptionList=[];
  @override
  void initState() {
    super.initState();
    imageList = widget.imageList;
    captionTitleList= widget.captionTitleList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height-520,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            autoPlay: true,
          ),
          items: imageList.map((image) {
            int index = imageList.indexOf(image);
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Container(height: 50,),
                      // Container(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(5.0),
                      //         child: Text(
                      //           captionTitleList[index],
                      //           style: TextStyle(
                      //             fontFamily: 'Oswald',
                      //             fontSize: 25.0,
                      //             fontWeight: FontWeight.bold,
                      //           ),
                      //         ),
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        // Container(height: 100),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: imageList.map((image) {
        //     int index = imageList.indexOf(image);
        //     return Container(
        //       width: 8,
        //       height: 8,
        //       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: _currentIndex == index
        //             ? Colors.white
        //             : Colors.grey.withOpacity(0.5),
        //       ),
        //     );
        //
        //   }).toList(),
        // ),
        //

      ],
    );
  }
}





class MySolSlider extends StatefulWidget {

  late List<String> imageList = [
    'asset/image/sol1.png',
    'asset/image/sol2.png',
  ];
  late List<String> captionTitleList = [
    // "대한민국 1등 할인점 'E-mart'",
    // "글로벌 제약회사 'Merck'",
    // "자산관리 전문 기업 '젠스타'",
    // "수제 맥주 '가나다라 브루어리'",
    // "스마트 대리운전 '파파부'"
    '','','','','',
  ];


  @override
  _MySolSlider createState() => _MySolSlider();
}

class _MySolSlider extends State<MySolSlider> {
  int _currentIndex = 0;
  List<String> imageList = [];
  List<String> captionTitleList=[];
  List<String> captionDescriptionList=[];
  @override
  void initState() {
    super.initState();
    imageList = widget.imageList;
    captionTitleList= widget.captionTitleList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height-550,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            autoPlay: true,
          ),
          items: imageList.map((image) {
            int index = imageList.indexOf(image);
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Container(height: 50,),
                      // Container(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(5.0),
                      //         child: Text(
                      //           captionTitleList[index],
                      //           style: TextStyle(
                      //             fontFamily: 'Oswald',
                      //             fontSize: 25.0,
                      //             fontWeight: FontWeight.bold,
                      //           ),
                      //         ),
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        // Container(height: 100),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: imageList.map((image) {
        //     int index = imageList.indexOf(image);
        //     return Container(
        //       width: 8,
        //       height: 8,
        //       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: _currentIndex == index
        //             ? Colors.white
        //             : Colors.grey.withOpacity(0.5),
        //       ),
        //     );
        //
        //   }).toList(),
        // ),
        //

      ],
    );
  }
}
