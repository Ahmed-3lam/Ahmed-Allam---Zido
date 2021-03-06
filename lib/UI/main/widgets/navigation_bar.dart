import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zido/Helpers/CommonUtils/image_utils.dart';
import 'package:zido/UI/main/cubit/main_cubit.dart';
import 'package:zido/Helpers/generated/l10n.dart';
import 'package:zido/Helpers/res/m_colors.dart';

class CustomNavBar extends StatelessWidget {
  final MainCubit cubit;

  const CustomNavBar(this.cubit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: MColors.colorPrimarySwatch,
      backgroundColor: Colors.white,
      // elevation: 0,
      currentIndex: cubit.currentIndex,
      onTap: (index) {
        cubit.changeBottomNavBar(index);
      },
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageUtils.getSVGPath('bx_bx-home-smile'),
            ),
            label: S.of(context).home),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageUtils.getSVGPath('cart')),
            label: S.of(context).buy),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageUtils.getSVGPath('add')), label: S.of(context).sell),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageUtils.getSVGPath('person')), label: S.of(context).profile),
      ],
    );
  }
}
//
// CurvedNavigationBar(
// index: 0,
// height: 60.0,
// items: <Widget>[
// Container(
// margin: const EdgeInsets.all(4),
// child: SvgPicture.asset(
// ImageUtils.getSVGPath('bx_bx-home-smile'),
// color:
// cubit.currentIndex == 0
// ? Colors.white
//     : MColors.colorPrimarySwatch,
// ),
// ),
// Container(
// margin: const EdgeInsets.all(4),
// child: SvgPicture.asset(
// ImageUtils.getSVGPath('cart'),
// color: cubit.currentIndex == 1
// ? Colors.white
//     : MColors.colorPrimarySwatch,
// ),
// ),
// Container(
// margin: const EdgeInsets.all(4),
// child: SvgPicture.asset(
// ImageUtils.getSVGPath('add'),
// color: cubit.currentIndex == 2
// ? Colors.white
//     : MColors.colorPrimarySwatch,
// ),
// ),
// Container(
// margin: const EdgeInsets.all(4),
// child: SvgPicture.asset(
// ImageUtils.getSVGPath('person'),
// color: cubit.currentIndex == 3
// ? Colors.white
//     : MColors.colorPrimarySwatch,
// ),
// ),
// ],
// color: Colors.white,
// buttonBackgroundColor: MColors.colorPrimarySwatch,
// backgroundColor: Colors.white,
// animationCurve: Curves.easeInOut,
// animationDuration: const Duration(milliseconds: 200),
// onTap: (index) {
// cubit.changeBottomNavBar(index);
// },
// letIndexChange: (index) => true,
// );
