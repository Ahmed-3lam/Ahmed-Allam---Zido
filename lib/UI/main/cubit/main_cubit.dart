import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  // static MainCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(MainBottomNavState());
  }
}
