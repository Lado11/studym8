import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


enum SingingCharacter { lafayette, jefferson }

class EnrolCourseScreen extends StatefulWidget {
  const EnrolCourseScreen({super.key});

  @override
  State<EnrolCourseScreen> createState() => _EnrolCourseScreenState();
}

class _EnrolCourseScreenState extends State<EnrolCourseScreen> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.arrow_left,
        ),
        title: Text("Enroll Course"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 34),
              child: Text(
                "Please select a payment method",
                style: semi16TextStyle
              ),
            ),
            EnrolCorseInstance(),
            const SizedBox(
              height: 248,
            ),
            ElevatedButtonCustom.purple(
                title: "Enroll Now -  50",
                onTab: () {
                  Navigator.pushNamed(context, "/${RouteEnum.enrol_payment.name}");
                })
          ],
        ),
      )),
    );
  }
}
