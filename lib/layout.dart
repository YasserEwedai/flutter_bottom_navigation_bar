import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_navigation_bar/cubit/cubit.dart';
import 'package:flutter_bottom_navigation_bar/cubit/states.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=AppCubit.get(context);


    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text('BottomNavigationBar'),
            backgroundColor: Colors.blue,
          ),
          body: cubit.myScreen[cubit.myCurntIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeNavBar(index);
            },
            currentIndex: cubit.myCurntIndex,
            items:cubit.bottomItems,
          ),
        );
      },

    );
  }
}
