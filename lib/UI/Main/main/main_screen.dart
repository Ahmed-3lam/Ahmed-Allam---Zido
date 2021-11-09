import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zido/CommonUtils/image_utils.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/gaps.dart';
import 'package:zido/res/m_colors.dart';


import 'cubit/main_cubit.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
     {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> appBarTitles = [
     const Text(
        "Zido",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),

    ];
    return BlocProvider(
        create: (BuildContext context) => MainCubit(),
        child: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = BlocProvider.of<MainCubit>(context);
            return Scaffold(
              key: _scaffoldKey,
              backgroundColor: Colors.white,
              appBar: AppBar(
                // backgroundColor: Colors.white,
                elevation: 0,
                title: appBarTitles[0],
                centerTitle: true,
                leading: InkWell(
                  onTap: () {
                    Intl.getCurrentLocale() == "en"?
                    Get.updateLocale(Locale("ar")):Get.updateLocale(Locale("en"));
                  },
                  child: Icon(CupertinoIcons.search),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.bell_fill),
                  )
                ],
              ),
              bottomNavigationBar: CurvedNavigationBar(
                index: 0,
                height: 60.0,
                items: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      ImageUtils.getSVGPath('bx_bx-home-smile'),
                      color:
                      cubit.currentIndex == 0
                          ? Colors.white
                          : MColors.colorPrimarySwatch,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      ImageUtils.getSVGPath('cart'),
                      color: cubit.currentIndex == 1
                          ? Colors.white
                          : MColors.colorPrimarySwatch,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      ImageUtils.getSVGPath('add'),
                      color: cubit.currentIndex == 2
                          ? Colors.white
                          : MColors.colorPrimarySwatch,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      ImageUtils.getSVGPath('person'),
                      color: cubit.currentIndex == 3
                          ? Colors.white
                          : MColors.colorPrimarySwatch,
                    ),
                  ),
                ],
                color: Colors.white,
                buttonBackgroundColor: MColors.colorPrimarySwatch,
                backgroundColor: Colors.white,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 200),
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
                letIndexChange: (index) => true,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                },
                backgroundColor: MColors.colorPrimarySwatch,
                child: const Icon(Icons.add),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                  Container(
                  width: double.infinity,
                  height: 200,
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CarouselSlider(
                      // items:  newModel?.data?.banners?.map((e) => Image(
                      //   image: NetworkImage('${e.image}'),
                      //   width: double.infinity,
                      //   fit: BoxFit.cover,
                      //
                      // ),).toList()
                      items: [


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
                  ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            S.of(context).latest_items,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            S.of(context).see_all,
                            style:  TextStyle(
                              color: MColors.colorPrimarySwatch,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap8,
                    Container(
                      height: 290,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(10),
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Stack(
                                        alignment: AlignmentDirectional.topEnd,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 160,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4)),
                                                  child: Image.network(
                                                    "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
                                                    fit: BoxFit.cover,
                                                    height: 130,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                                Gaps.vGap4,
                                                Text(
                                                  "36:21:36",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(3),
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Icon(
                                              CupertinoIcons.heart,
                                              size: 18,
                                              color: Colors.green,
                                            ),
                                          )
                                        ],
                                      ),
                                      Gaps.vGap4,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children:  [
                                              Text(
                                                "120,000",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                S.of(context).sar,
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          Text(
                                            S.of(context).first_furn,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            S.of(context).first_furn,
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 20,
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                border: Border.all(
                                                    color: MColors.colorPrimarySwatch)),
                                            child: Center(
                                                child: Text(
                                              S.of(context).havar,
                                              style: TextStyle(
                                                  color: MColors.colorPrimarySwatch,
                                                  fontSize: 10),
                                            )),
                                          ),
                                          Gaps.hGap4,
                                          Container(
                                            width: 60,
                                            height: 20,
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                border: Border.all(
                                                    color: Colors.green)),
                                            child: Center(
                                                child: Text(
                                              S.of(context).used,
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 10),
                                            )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            S.of(context).private_auctions,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            S.of(context).see_all,
                            style:  TextStyle(
                              color: MColors.colorPrimarySwatch,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              child: Image.network(
                                "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(S.of(context).first_furn),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://st3.depositphotos.com/1007566/13024/v/950/depositphotos_130240748-stock-illustration-young-man-avatar-character.jpg"),
                                    ),
                                    Gaps.hGap4,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(S.of(context).AhmedAllam),
                                        Text(
                                          "@aymanusername",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Gaps.vGap15,
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.alarm,
                                      size: 15,
                                      color: Colors.green,
                                    ),
                                    const Text(
                                      "00:10:47",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Container(
                                      width: 60,
                                      height: 20,
                                      padding: const EdgeInsets.all(2),
                                      decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          color: MColors.colorPrimarySwatch),
                                      child:  Center(
                                          child: Text(
                                        S.of(context).join,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Gaps.vGap15,

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              child: Image.network(
                                "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(S.of(context).first_furn),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://st3.depositphotos.com/1007566/13024/v/950/depositphotos_130240748-stock-illustration-young-man-avatar-character.jpg"),
                                    ),
                                    Gaps.hGap4,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(S.of(context).AhmedAllam),
                                        Text(
                                          "@aymanusername",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Gaps.vGap15,
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person_2_fill,
                                      size: 15,
                                      color: Colors.green,
                                    ),
                                    Gaps.hGap4,
                                    Text(
                                      "3/8",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Gaps.hGap8,
                                    Icon(
                                      CupertinoIcons.alarm,
                                      size: 15,
                                      color: Colors.green,
                                    ),
                                    Gaps.hGap4,
                                    Text(
                                      "00:10:47",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Container(
                                      width: 60,
                                      height: 20,
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          color: Colors.green),
                                      child: Center(
                                          child: Text(
                                        S.of(context).pending,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    ///Latest Posts
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            S.of(context).latest_posts,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            S.of(context).see_all,
                            style:  TextStyle(
                              color: MColors.colorPrimarySwatch,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => Container(
                                width: 300,
                                height: 150,
                                margin: EdgeInsets.all( 12),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Colors.green),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image.network(
                                        "https://cdn.vox-cdn.com/thumbor/IneeXFCJM7YjxGrqgg5zJBmblHA=/0x0:3809x2857/1200x800/filters:focal(1601x1125:2209x1733)/cdn.vox-cdn.com/uploads/chorus_image/image/66274935/Workshop_0919-HS-40Something_Ask-studio_TommyCorner-1.0.0.jpg",
                                        // color: const Color.fromRGBO(
                                        //     255, 255, 255, 0.5),
                                        // colorBlendMode: BlendMode.dstATop,
                                        width: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                             Text(
                                              S.of(context).first_furn,
                                              style:const  TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                           const  CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  "https://st3.depositphotos.com/1007566/13024/v/950/depositphotos_130240748-stock-illustration-young-man-avatar-character.jpg"),
                                            ),
                                            Gaps.hGap4,
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children:  [
                                                Text(
                                                  S.of(context).AhmedAllam,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "@aymanusername",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }


}
