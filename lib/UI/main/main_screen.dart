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
import 'package:zido/UI/main/widgets/banner_builder.dart';
import 'package:zido/UI/main/widgets/latest_item_builder.dart';
import 'package:zido/UI/main/widgets/latest_posts_builder.dart';
import 'package:zido/UI/main/widgets/navigation_bar.dart';
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
              bottomNavigationBar: CustomNavBar(cubit),
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                },
                backgroundColor: MColors.colorPrimarySwatch,
                child: const Icon(Icons.add),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const BannerBuilder(),
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
                    const LatestItemBuilder(),

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

                    const LatestPostsBuilder()
                  ],
                ),
              ),
            );
          },
        ));
  }


}
