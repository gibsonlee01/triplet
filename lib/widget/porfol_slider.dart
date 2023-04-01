import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyPortfolioSlider extends StatefulWidget {

  late List<String> imageList = [
    'asset/image/po1.png',
    'asset/image/po2.png',
    'asset/image/po3.png',
    'asset/image/po4.png',
    'asset/image/po5.png',
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
  _MyPortfolioSlider createState() => _MyPortfolioSlider();
}

class _MyPortfolioSlider extends State<MyPortfolioSlider> {
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
            height: MediaQuery.of(context).size.height-200,
            aspectRatio: 16 / 9,
            viewportFraction: 1.2,
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
