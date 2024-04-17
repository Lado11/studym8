import 'package:flutter/material.dart';
import 'package:studym8/index.dart';
class InfoBlockPage extends StatelessWidget {
  InfoBlockPage._({super.key, required this.data});

  InfoBlockPage.costom({super.key, required this.data});

  InfoBlockPage.online({super.key}) {
    data = InfoBlock.online;
  }

  InfoBlockPage.medium({super.key}) {
    data = InfoBlock.medium;
  }

  InfoBlockPage.fixible({super.key}) {
    data = InfoBlock.fixible;
  }

  InfoBlock? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Image(
              image: AssetImage("${data?.image}"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "${data?.title}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
