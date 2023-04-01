import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselSlider extends StatefulWidget {

  late List<String> imageList = [
    'asset/image/home1.png',
    'asset/image/home2.png',
    'asset/image/home3.png',  ];
  late List<String> captionTitleList = [
    'PERSUE NEW HUMANITY',
    '산업별 맞춤 솔루션',
    '파트너사 소개',  ];
  late List<String> captionDescriptionList = [
    'AI 기술과 IoT 기술을 기반으로 한 AIoT 플랫폼 위에 다양한 솔루션을 제공하고 있으며 특히 도시 안전, 무인 매장, 스마트 팩토리 등의 영역에서 혁신적인 결과물을 도출하고 있습니다. Triplet은 고객의 평범한 데이터를 혁신적 인사이트로 바꾸어 효율과 가치를 극대화하는데 전념하고 있습니다.',
    '각 산업은 조금씩 다른 AI와 IoT 기술을 필요로 합니다. AI+IoT 도입 시 그 기대효과가 가장 큰 산업들을 위해 맞춤 솔루션이 준비되어 있습니다. 사업에 맞는 솔루션을 도입하여 새로운 인사이트를 확보하고 사업의 생산성과 가치를 극대화하세요.',
    '트리플렛의 대표적인 파트너사로는 SKT,이마트,신한금융그룹,가나다라브루어리,젠스타,한양대학교,머크,보령제약 등이 있습니다. \n \n파트너사 문의는 문의하기를 통해서 해주시면 감사하겠습니다.',  ];


  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int _currentIndex = 0;
  List<String> imageList = [];
  List<String> captionTitleList=[];
  List<String> captionDescriptionList=[];
  @override
  void initState() {
    super.initState();
    imageList = widget.imageList;
    captionTitleList= widget.captionTitleList;
    captionDescriptionList=widget.captionDescriptionList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height-300,
            aspectRatio: 16/ 9,
            viewportFraction: 0.9,
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
                      Container(height: 50,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                captionTitleList[index],
                                style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                captionDescriptionList[index],
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontFamily: 'Oswald',
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Container(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.map((image) {
            int index = imageList.indexOf(image);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Colors.white
                      : Colors.grey.withOpacity(0.5),
                ),
              );

          }).toList(),
        ),


      ],
    );
  }
}
