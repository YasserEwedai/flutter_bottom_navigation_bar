import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
          Text('Home Screen',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),)
        ,
      ),
    );
  }
}
