import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 5.0, color:primary),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            useRootNavigator: true,
            builder: (BuildContext context) {
              return SizedBox(
                height: 550,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Padding(padding: EdgeInsets.symmetric(vertical: 20),child:  Text(
                         "Filter",
                         style: roboto24TextStyle,
                       ),)
                      ],
                    ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        indent: 1,
                        endIndent: 0,
                        color:grey,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16,top: 24),child:   Text("Category",
                          style: roboto24TextStyle.copyWith(
                              fontWeight: FontWeight.w400)),),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var item in homeTextButtonData)
                              Padding(
                                  padding: EdgeInsets.only(right: 16),
                                  child: CustomTextButton(data: item))
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24),child:      Text("Price range",
                          style: roboto24TextStyle.copyWith(
                              fontWeight: FontWeight.w400)),),
                      const RangeSliderExample(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text("Rating",
                            style: roboto24TextStyle.copyWith(
                                fontWeight: FontWeight.w400)),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var item in homeReytingData)
                              Padding(
                                  padding: EdgeInsets.only(right: 16),
                                  child: CustomReytingButtom(data: item))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButtonCustom.primryMin(
                              title: "Clear filter", onTab: () {}),
                          const SizedBox(
                            width: 36,
                          ),
                          ElevatedButtonCustom.purpleMin(
                              title: "Apply filter", onTab: () {})
                        ],
                      )
                    ],
                  ),
                )
              );
            },
          );
        },
        child: const Icon(
          CupertinoIcons.slider_horizontal_3,
          color: white,
        ),
      );

  }
}
