import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intl/intl.dart';
import 'package:zido/UI/main/widgets/banner_builder.dart';
import 'package:zido/UI/main/widgets/latest_item_builder.dart';
import 'package:zido/UI/main/widgets/latest_posts_builder.dart';
import 'package:zido/UI/main/widgets/navigation_bar.dart';
import 'package:zido/UI/main/widgets/private_auction_builder.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/gaps.dart';
import 'package:zido/res/m_colors.dart';
import 'cubit/main_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

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

                    /// Latest Items
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

                    ///private auctions
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
                    const PrivateAuctionBuilder(),
                    Gaps.vGap15,
                    const PrivateAuctionBuilder(isPending: true,),

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
