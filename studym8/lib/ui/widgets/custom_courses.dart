import 'package:flutter/cupertino.dart';

import 'package:studym8/index.dart';

class CustomCourses extends StatelessWidget {
  const CustomCourses._(
      {super.key,
      required this.title,
      required this.image,
      required this.reyting});

  final String title;
  final String reyting;
  final String image;

  factory CustomCourses.onyl({
    required String title,
    required String image,
    required String reyting,
  }) {
    return CustomCourses._(reyting: reyting, title: title, image: image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)),
                    color: primary,
                  ),
                  width: 167,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: robotoWhite12TextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              reyting,
                              style: robotoWhite12TextStyle,
                            ),
                            const SizedBox(width: 2,),
                            const Icon(
                              size: 12,
                              CupertinoIcons.star_fill,
                              color:yellow,
                            )
                          ],
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
