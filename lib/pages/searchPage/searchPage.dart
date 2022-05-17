import 'package:flutter/material.dart';
import 'package:lastproject/constants/const/color_const.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConst.colorConst,
            bottom: const TabBar(
              labelColor: Colors.amberAccent,
              indicatorColor: Colors.blueAccent,
              automaticIndicatorColorAdjustment: false,
              unselectedLabelColor: Colors.green,
              tabs: [
                Chip(
            label: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Filter"),)),
             Chip(
            label: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Healthy"),)),
             Chip(
            label: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Technology"),)),
             Chip(
            label: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Finance")),
          ),
              ],
            ),
            title: Text("this is a tab"),
          ),
          body: TabBarView(
            children: [


              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_transit),

            
            ],
          ),
        ),
      ),
    );
  }
}