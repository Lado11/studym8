import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:studym8/index.dart';

class CustomCarusel extends StatelessWidget {
  const CustomCarusel({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        autoPlay: true,
        height: 175.0,
        showIndicator: true,
        slideIndicator: const CircularSlideIndicator(),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color:primary,
                  borderRadius: BorderRadius.all(Radius.circular(
                          15.0) //                 <--- border radius here
                      ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today’s Special",
                            style: semiBold24TextStyle,
                          ),
                          Text(
                            "30%",
                            style: semiBold40TextStyle,
                          )
                        ],
                      ),
                      Text(
                        "Get a discount for every course order! Only Valid for today ",
                        style: robotoWhite16TextStyle,
                      )
                    ],
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
