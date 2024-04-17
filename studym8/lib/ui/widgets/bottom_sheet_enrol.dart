import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

import '../../main.dart';


class EnrollBottomSheet extends StatelessWidget {
  const EnrollBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButtonCustom.purple(
        title: "Confirm",
        onTab: () {
          showModalBottomSheet<void>(
            context: context,
            // isScrollControlled: true,
            useRootNavigator: true,
            isDismissible: true,
            builder: (BuildContext context) {
              return Container(
                  height: 700,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 34),
                                child: Image(
                                    image: AssetImage(
                                        "assets/enrol_success.png"))),
                            Text(
                              "Successfully enrolled",
                              style: roboto24TextStyle,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 86,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButtonCustom.purpleMin(
                                title: "View Course",
                                onTab: () {
                                  navigationKey.currentState?.pushNamed("/my_courses_data",arguments: 1);
                                  // Navigator.pushNamed(
                                  // coursesNavigatorKey.currentState!.context, "/my_courses_second",);
                                }),
                            const SizedBox(
                              width: 16,
                            ),
                            ElevatedButtonCustom.primryMin(
                                title: "Payment Receipt", onTab: () {})
                          ],
                        )
                      ],
                    ),
                  ));
            },
          );
        },
      ),
    );
  }
}
