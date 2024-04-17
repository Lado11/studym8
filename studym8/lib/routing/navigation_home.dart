import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screen/home/home_screen.dart';
import '../screen/home/my_courses_primry.dart';

GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

class HomeNavigator extends StatefulWidget {
  @override
  _HomeNavigator createState() => _HomeNavigator();
}

class _HomeNavigator extends State<HomeNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _homeNavigatorKey,
      initialRoute: '/home',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/home':
                  return HomeScreen();
                case '/all_courses':
                  return MyCoursesPrimry();
                default:
                  return Text("Page not found");
              }
            });
      },
    );
  }
}
