import 'package:flutter/material.dart';

class CateogriesScreen extends StatelessWidget {
  const CateogriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
        Text('Cateogries Screen',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
        ),)
        ,
      ),
    );

  }
}
