import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key, this.arguments});

  final Map<String, dynamic>? arguments;

  @override
  Widget build(BuildContext context) {
    debugPrint("$arguments");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color:black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Image(image: AssetImage("assets/Group 42.png")),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: ImageUi.max(mapObj: arguments, onTab: () {}, size: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: AboutWidgets(),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 34),
                  child: InfoBlockPage.medium()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: InfoBlockPage.online(),
              ),
              InfoBlockPage.fixible(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 34), child: Skills()),
              CourseInstructor(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButtonCustom.purple(
                    title: "Enroll Now - ${50}",
                    onTab: () {
                      Navigator.pushNamed(context, "/${RouteEnum.enrol.name}");
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
