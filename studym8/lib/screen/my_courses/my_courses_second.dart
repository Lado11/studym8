import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class MyCorsesSecond extends StatefulWidget {
  const MyCorsesSecond({super.key});

  @override
  State<MyCorsesSecond> createState() => _MyCorsesSecondState();
}

class _MyCorsesSecondState extends State<MyCorsesSecond> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text('My Courses'),
              centerTitle: true,
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Certificates",
                  ),
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    for (var item in MyCoursesEnum.values)
                      Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/my_courses_tabBar",arguments: item);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  width: 105.0,
                                  height: 87.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(item.image)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    // color: Colors.redAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: item.title,
                                                  style:
                                                      robotoBlack16TextStyle),
                                            ])),
                                        Text(item.desc,
                                            style: roboto16TextStyle),
                                        LinearProgressIndicator(
                                            value: item.progress,
                                            valueColor: AlwaysStoppedAnimation(
                                                Color(0xFF3D348B)),
                                            backgroundColor: white,
                                            minHeight: 6.0,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))
                                        ),
                                        Text(
                                          item.info,
                                          style: robotoBlack12TextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Text("Completed"),
              Text("Certeficats")
            ])));
  }
}
