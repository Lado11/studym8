import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

import '../../main.dart';
import '../../ui/widgets/custom_carusel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/8e60/2e28/c9d3cd162a81d7cdc557bbaf674bcf3e?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=juuO1lxP1vJWxFtU-wSgOsr~u8~TN9n~WLNBtrK0UR8XygQdipRux7NDZlUWimXGxKEEdWFtlxZUB2lbTBg-nYQ5sEAFQ250Hj605nMExbtjGN2i-MfvEl71O2SMV0hLS-K8-BPK9dlqSo3xpi08GaHEAX3zGXXqNcBUS-u2tt4epDNjg~WGl054QWXSFP9~cTOvkUgxaYVH8I6AEV84~JwVgyUb5LJkw7sOvhOSfYg25Z5KRty4dziEj8PUJ~vY7uTdx8T5TwAf6j2v1ujBWC4CIpCYpzOCLUL8LL1nJPl9aYYghvFlCpZwK94bmNxKVR-CQZ9dEnZ72Fh4X5bHBw__",
                    )),
                title: Text("Good Morning"),
                subtitle: Text("Benjamin "),
                trailing: Icon(
                  CupertinoIcons.bell_solid,
                  color: Color(0xFF3D348B),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: const BoxDecoration(
                  color: Color(0xFF3D348B),
                  borderRadius: BorderRadius.all(Radius.circular(
                      15.0) //                 <--- border radius here
                  ),
                ),
                child: ListTile(
                    leading: const Icon(
                      CupertinoIcons.search,
                      color: white,
                    ),
                    title: TextField(
                      onTap: () {
                        Navigator.pushNamed(navigationKey.currentState!.context, "/search");
                      },
                      readOnly: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search',
                        hintStyle: robotoWhite16TextStyle,
                      ),
                    ),
                    trailing: Container(
                      child: BottomSheetExample(),
                    )),
              ),

            Padding(padding: EdgeInsets.only(top: 25),child:   CustomCarusel(),),
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: Text(
                  "Keep learning to make progress",
                  style: robotoBlackBold16TextStyle,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in homeData)
                      Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: KeppLerning(data: item),
                      )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Courses",
                          style: robotoBlackBold16TextStyle,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/all_courses");
                          },
                          child: Text(
                            "See all",
                            style: roboto16TextStyle.copyWith(
                                color:whitegary),
                          ),
                        )
                      ])),
              Row(
                children: [
                  CustomCourses.onyl(
                      title: "Design Principles",
                      image: "assets/courses1.png",
                      reyting: "4.5"),
                  SizedBox(
                    width: 16,
                  ),
                  CustomCourses.onyl(
                      title: "Back-End Deve.....",
                      image: "assets/courses2.png",
                      reyting: "4.0")
                ],
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
