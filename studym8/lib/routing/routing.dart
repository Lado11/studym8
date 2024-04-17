import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';
import '../screen/home/search_home_data.dart';


class Routing extends StatelessWidget {
  const Routing({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
        builder: (context) => const FisrtPage(),
        settings: settings,
      );
    case "/my_courses_primry":
      return MaterialPageRoute(
        builder: (context) => const MyCoursesPrimry(),
        settings: settings,
      );
    case "/onbording":
      return MaterialPageRoute(
          builder: (context) => const OnbordingPage(), settings: settings);
    case "/social":
      return MaterialPageRoute(
          builder: (context) => const MediaPage(), settings: settings);
    case "/courses":
      return MaterialPageRoute(
          builder: (context) =>
              AllCourses(arguments: settings.arguments as Map<String, dynamic>),
          settings: settings,
          fullscreenDialog: true);
    case "/enrol":
      return MaterialPageRoute(
          builder: (context) => const EnrolCourseScreen(), settings: settings);
    case "/enrol_payment":
      return MaterialPageRoute(
          builder: (context) => const EnrollPaymnetPin(), settings: settings);
    case "/registration":
      return MaterialPageRoute(
          builder: (context) => const RegistrationScreen(), settings: settings);
    case "/auth":
      return MaterialPageRoute(
          builder: (context) => const AuthScreen(), settings: settings);
    case "/login":
      return MaterialPageRoute(
          builder: (context) => LoginScreen(), settings: settings);
    case "/profile":
      return MaterialPageRoute(
          builder: (context) => const SetUpProfileScreen(), settings: settings);
    case "/my_courses_data":
      return MaterialPageRoute(
          builder: (context) =>  MyCourses(arguments: settings.arguments as int), settings: settings);
    case "/search":
      return MaterialPageRoute(
          builder: (context) => SearchBarApp(), settings: settings);
    case "/courses_navigator":
      return MaterialPageRoute(
          builder: (context) => CoursesNavigator(), settings: settings);
  }

  return null;
}
