import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_navigation_bar/cubit/states.dart';

import '../cateogries_screen.dart';
import '../home_screen.dart';
import '../settings_screen.dart';




class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);


///////////////////////////////////////////////////

  List<Widget> myScreen = [
    HomeScreen(),
    CateogriesScreen(),
    SettingsScreen(),

  ];

  int myCurntIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.apps,
      ),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'Settings',
    ),
  ];

  void changeNavBar(int index) {
    myCurntIndex = index;
    emit(ChangeBottomNavState());
    print(myCurntIndex);
  }


/////////////////////////////////////////////////////



}




