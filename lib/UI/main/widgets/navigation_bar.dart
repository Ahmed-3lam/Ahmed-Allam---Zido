import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zido/CommonUtils/image_utils.dart';
import 'package:zido/UI/main/cubit/main_cubit.dart';
import 'package:zido/res/m_colors.dart';

class CustomNavBar extends StatelessWidget {
  final MainCubit cubit;
  const CustomNavBar(this.cubit,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
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
    );
  }
}
