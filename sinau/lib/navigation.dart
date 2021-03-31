import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sinau/home_page.dart';
import 'package:sinau/search_page.dart';


class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static  List<Widget> _options = [
    HomePage(),
    ExplorePage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
           Center(
          child: _options.elementAt(_selectedIndex),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
        padding: EdgeInsets.only(left: 90, right: 90, bottom: 1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Color.fromRGBO(27, 36, 47, 0.1), spreadRadius: 0, blurRadius: 8, )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          child: BottomNavigationBar(
              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: _selectedIndex == 0? new SvgPicture.asset('lib/icons/home.svg', color: Colors.red, height: 20,) : new SvgPicture.asset('lib/icons/home.svg', color: Colors.black, height: 20,),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 0? new SvgPicture.asset('lib/icons/loupe.svg', color: Colors.black, height: 20,) : new SvgPicture.asset('lib/icons/loupe.svg', color: Colors.red, height: 20,),
                    label: 'Explore',
                ),
              ],
              type: BottomNavigationBarType.shifting,
              currentIndex: _selectedIndex,
              selectedFontSize: 30,
              selectedItemColor: Color(0xFFFF8181),
              selectedLabelStyle: TextStyle(fontSize: 13, fontFamily: "DMSans-Regular", fontWeight: FontWeight.w400),
              unselectedItemColor: Color(0xFF161719),
              iconSize: 30,
              onTap: _onItemTap,
              
          ),
        ),
      ),
        )
        ],
    ));
  }
}