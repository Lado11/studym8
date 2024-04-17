import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

GlobalKey<NavigatorState> bootomNavigationNavigatorKey = GlobalKey<NavigatorState>();

class MyCourses extends StatefulWidget {
  const MyCourses({super.key,  this.arguments});
  final int? arguments;

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  int _selectedIndex = 0;
  @override
  void initState() {
    _selectedIndex = widget.arguments ?? 0;
    super.initState();
  }


  static final List<Widget> _widgetOptions = <Widget>[
    HomeNavigator(),
    CoursesNavigator(),
    Text(
      'Index 2: Favorite',
    ),
    Text(
      'Index 3: Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: bootomNavigationNavigatorKey,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:primary,
        unselectedItemColor:grey,
        fixedColor:white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.doc_text,
            ),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}
