import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerBuilder extends StatefulWidget {
   BannerBuilder({Key? key}) : super(key: key);

  @override
  State<BannerBuilder> createState() => _BannerBuilderState();
}

class _BannerBuilderState extends State<BannerBuilder> {
  int _current = 0;
  var _controller;
  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CarouselSlider(
              carouselController: _controller,
              items: imgList,
              options: CarouselOptions(
                viewportFraction: 1,
                height: 250,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
              ),
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.white60
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

List<Widget> imgList = [
  Image(
    image: AssetImage("assets/images/slider1.png"),
    width: double.infinity,
    fit: BoxFit.fill,
  ),
  Image(
    image: AssetImage("assets/images/slider2.png"),
    width: double.infinity,
    fit: BoxFit.fill,
  ),
  Image(
      image: AssetImage("assets/images/slider3.png"),
      width: double.infinity,
      fit: BoxFit.fill)
];
