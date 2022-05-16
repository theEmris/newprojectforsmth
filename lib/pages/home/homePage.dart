import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lastproject/constants/const/color_const.dart';
import 'package:lastproject/pages/widget_/latestNews.dart';
import 'package:lastproject/pages/widget_/otherNEws.dart';
import 'package:lastproject/pages/widget_/tabbar.dart';
import 'package:lastproject/size_config.dart';
import 'package:lastproject/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: ColorConst.colorConst,

      appBar: myAppBar().build(context),
      body: Column(children: [
          seeAll(),
          Expanded(
            flex: 3,
            child:Container(
              height: getHeight(240),
              width: getWidht(361),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                  20
                ),
                
                
                
                ),
                image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",),fit: BoxFit.cover)
              ),
            )
            
             ),
          tabbar(),
          
          otherNews()
             
      ],),
    );
  }

  latestNewstext seeAll() {
    return latestNewstext();
  }

  AppBar thisAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConst.colorConst,
      elevation: 0,
      actions: [
        Container(
          height: 40,
          width: 40,
          child: Image.asset("assets/notify.png"),
        )
      ],
      title: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:getHeight(43),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextFormField(
            
            decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(15)) ),
                 hintText: "smyhs has happened",
                 suffixIcon: Icon(Icons.search)

            )
        ),
      )
    )
    );
  }
}





