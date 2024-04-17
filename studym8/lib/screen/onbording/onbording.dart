import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPage();
}

class _OnbordingPage extends State<OnbordingPage> {
  int index = 0;
  List<OnbordingData> data = [
    OnbordingData(
        title: "Learn",
        image: "assets/images2.png",
        desc: "Learn anytime & anywhere easily and conveniently"),
    OnbordingData(
        title: "Knowledge",
        image: "assets/Clippathgroup.png",
        desc: "Gain knowledge & skills ready for the job market"),
    OnbordingData(
        title: "Collaborative Study",
        image: "assets/Clip path group (1).png",
        desc: "Study in groups, Share ideas"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ViewInstance(data: data[index]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 34.0),
                child: Text(
                  "${index + 1} of 3",
                  style: robotoWhite16TextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButtonCustom.primry(
                      onTab: () {
                        Navigator.pushNamed(
                            context, "/${RouteEnum.social.name}");
                      },
                      title: "Skip",
                    ),
                    ElevatedButtonCustom.primry(
                      onTab: () {
                        setState(() {
                          if (index < data.length - 1) {
                            index++;
                          } else {
                            Navigator.pushNamed(
                                context, "/${RouteEnum.social.name}");
                          }
                        });
                      },
                      title: "Next",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
