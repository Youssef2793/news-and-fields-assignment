import 'package:flutter/material.dart';

class Itemsoflust extends StatelessWidget {
  String path;
  String title;
  Itemsoflust({required this.path,required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
        Image.asset(path),
        Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          backgroundColor: Color.fromRGBO(156, 39, 176, 0.8),
        ),)
        ],
      ));
  }
}