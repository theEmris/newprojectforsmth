

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lastproject/constants/const/color_const.dart';
import 'package:lastproject/pages/favorite/favoritePage.dart';
import 'package:lastproject/pages/home/homePage.dart';
import 'package:lastproject/pages/profile/profilePage.dart';

class BottomNavBAr extends StatefulWidget {
  const BottomNavBAr({Key? key}) : super(key: key);

  @override
  State<BottomNavBAr> createState() => _BottomNavBArState();
}

class _BottomNavBArState extends State<BottomNavBAr> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FavoritePage()
   ,ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipRRect(
          
          borderRadius: BorderRadius.all( Radius.circular(30.0)),
          
          child: Theme(
            
            data: Theme.of(context)
              .copyWith(canvasColor: Colors.amberAccent),
            child: BottomNavigationBar(
              
              backgroundColor:ColorConst.colorConst,
              
                items: [
                
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/home.svg"),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/love.svg"),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/smile.svg"),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
                
          
              ),
          ),
          
        ),
      ),
      
    );
  }
}
