import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

var SkillsData = [
  "User Interface Design (UI Design)",
  "UI/UX",
  "Design Pattern",
  "Design Tools",
  "Wireframe",
  "Mobile Design",
  "Web Design",
  "Prototyping"
];

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                "Skills you will gain",
                style:robotoBlackBold16TextStyle,
              )),
          Wrap(spacing: 8.0, runSpacing: 16.0, children: [
            for (var item in SkillsData)
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(item,
                        style: robotoWhite16TextStyle),
                  ))
          ])
        ]);
  }
}
