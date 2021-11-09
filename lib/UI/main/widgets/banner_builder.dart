import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerBuilder extends StatelessWidget {
  const BannerBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child:
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CarouselSlider(
          items:const  [


            Image(
              image: AssetImage("assets/images/slider1.png"),
              width: double.infinity,
              fit: BoxFit.fill
              ,
            ),
            Image(
              image: AssetImage("assets/images/slider2.png"),
              width: double.infinity,
              fit: BoxFit.fill
              ,
            ),
            Image(
                image: AssetImage("assets/images/slider3.png"),
                width: double.infinity,
                fit: BoxFit.fill
            )
          ]


          ,
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



          ),
        ),
      ),);
  }
}
