import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart' as intl;
import 'package:zido/CommonUtils/image_utils.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/m_colors.dart';
import 'dart:math' as math;

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

    List<Widget> imgList = [
      Container(
        width: double.infinity,
        height: 200,
        color:Colors.yellow,
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Positioned(
                right: intl.Intl.getCurrentLocale() == "en"?0:null,
                left: intl.Intl.getCurrentLocale() == "en"?null:0,
                child: intl.Intl.getCurrentLocale() == "en"?
                Image.asset("assets/images/hand.png",height: 200,width: 200,):
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child:   Image.asset("assets/images/hand.png",height: 200,width: 200,)),
                )

              ,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(intl.Intl.getCurrentLocale() == "en"?"Your Items are valuable":"منتجاتك ذو قيمة عالية",style: TextStyle(
                  fontSize: 14,
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"Sell & Buy anything" :"بيع و اشتري أي شئ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"with Auction System":"بنظام المزادات",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                MaterialButton(
                  color: Colors.black,
                  onPressed: (){},
                  child: Text(intl.Intl.getCurrentLocale() == "en"?"Start Now":"ابدأ الآن",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        height: 200,
        color:Colors.yellow,
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Positioned(
              right: intl.Intl.getCurrentLocale() == "en"?0:null,
              left: intl.Intl.getCurrentLocale() == "en"?null:0,
              child: intl.Intl.getCurrentLocale() == "en"?
              Image.asset("assets/images/hand.png",height: 200,width: 200,):
              Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child:   Image.asset("assets/images/hand.png",height: 200,width: 200,)),
            )

            ,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(intl.Intl.getCurrentLocale() == "en"?"Your Items are valuable":"منتجاتك ذو قيمة عالية",style: TextStyle(
                  fontSize: 14,
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"Sell & Buy anything" :"بيع و اشتري أي شئ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"with Auction System":"بنظام المزادات",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                MaterialButton(
                  color: Colors.black,
                  onPressed: (){},
                  child: Text(intl.Intl.getCurrentLocale() == "en"?"Start Now":"ابدأ الآن",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        height: 200,
        color:Colors.yellow,
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Positioned(
              right: intl.Intl.getCurrentLocale() == "en"?0:null,
              left: intl.Intl.getCurrentLocale() == "en"?null:0,
              child: intl.Intl.getCurrentLocale() == "en"?
              Image.asset("assets/images/hand.png",height: 200,width: 200,):
              Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child:   Image.asset("assets/images/hand.png",height: 200,width: 200,)),
            )

            ,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(intl.Intl.getCurrentLocale() == "en"?"Your Items are valuable":"منتجاتك ذو قيمة عالية",style: TextStyle(
                  fontSize: 14,
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"Sell & Buy anything" :"بيع و اشتري أي شئ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Text(intl.Intl.getCurrentLocale() == "en"?"with Auction System":"بنظام المزادات",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                MaterialButton(
                  color: Colors.black,
                  onPressed: (){},
                  child: Text(intl.Intl.getCurrentLocale() == "en"?"Start Now":"ابدأ الآن",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),

    ];
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
                width: 18.0,
                height: 4.0,
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(8),left:  Radius.circular(8)),
                  color: _current == index
                      ? MColors.colorPrimarySwatch
                      : Colors.white,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

}




