import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
        Text('Settings Screen',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
        ),)
        ,
      ),
    );

  }
}
