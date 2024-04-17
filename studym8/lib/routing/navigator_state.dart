import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/models/index.dart';
import '../screen/my_courses/my_courses_second.dart';
import '../screen/my_courses/my_courses_tab_bar.dart';

GlobalKey<NavigatorState> coursesNavigatorKey = GlobalKey<NavigatorState>();

class CoursesNavigator extends StatefulWidget {
  @override
  _CoursesNavigator createState() => _CoursesNavigator();
}

class _CoursesNavigator extends State<CoursesNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: coursesNavigatorKey,
      initialRoute: '/my_courses_second',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,

            builder: (BuildContext context) {
              switch (settings.name) {
                case '/my_courses_second':
                  return MyCorsesSecond();
                case '/my_courses_tabBar':
                  return MyCoursesTabBar(
                      arguments: settings.arguments as MyCoursesEnum);
                default:
                  return Text("Page not found");
              }
            });
      },
    );
  }
}
