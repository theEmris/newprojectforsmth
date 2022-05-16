import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        scrollDirection:
        Axis.horizontal ,
        itemBuilder:(context, index) {
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(label: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("views"),)),
        );
      },itemCount: 10,));
  }
}