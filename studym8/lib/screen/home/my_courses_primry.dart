import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';
import 'package:studym8/main.dart';


class MyCoursesPrimry extends StatelessWidget {
  const MyCoursesPrimry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.text_alignleft,
          color: primary,
        ),
        title: const Text("All Courses"),
        centerTitle: true,
        actions: const [
          Icon(CupertinoIcons.bell_fill, color: primary),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
              mainAxisSpacing: 0,
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              children: [
                for (var item = 0; item < listAllCourses.length; item++)
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            navigationKey.currentState!.context, "/${RouteEnum.courses.name}",
                            arguments: listAllCourses[item]);
                      },
                      child: ImageUi.min(
                          image: "${listAllCourses[item]["image"]}",
                          title: "${listAllCourses[item]["title"]}",
                          onTab: () {},
                          desc: "${listAllCourses[item]["desc"]}",
                          info: "${listAllCourses[item]["info"]}",
                          reyting: listAllCourses[item]["reyting"],
                          size: 13))
              ])),
    );
  }
}
