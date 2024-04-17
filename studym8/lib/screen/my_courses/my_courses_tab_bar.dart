import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studym8/index.dart';

class MyCoursesTabBar extends StatefulWidget {
  const MyCoursesTabBar({super.key, this.arguments});

  final MyCoursesEnum? arguments;

  @override
  State<MyCoursesTabBar> createState() => _MyCoursesTabBarState();
}

class _MyCoursesTabBarState extends State<MyCoursesTabBar> {
  int _selectedIndex = 0;
  bool canPop = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) {
        Navigator.of(context).pop();
        },
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Scaffold(
              body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 34),
                      child: Image(
                        image: AssetImage("${widget.arguments!.image}"),
                        width: 300,
                        height: 300,
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                        Text(widget.arguments!.title, style: roboto24TextStyle),
                  ),
                  const TabBar(
                    indicatorPadding: EdgeInsets.only(bottom: 10),
                    indicatorWeight: 1.0,
                    indicatorColor:black,
                    dividerColor: white,
                    unselectedLabelColor: grey,
                    labelColor: black,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(right: 49),
                    tabs: <Widget>[
                      Tab(
                        text: "Lectures",
                      ),
                      Tab(
                        text: "More",
                      ),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(children: <Widget>[
                    ListView.separated(
                      itemCount: widget.arguments!.list!.length,
                      separatorBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "${widget.arguments!.list?[index]["title"]}",
                              style: semi16TextStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: _selectedIndex == index
                                      ? primary
                                      : white),
                              child: ListTile(
                                shape: RoundedRectangleBorder(),
                                // selected: index == _selectedIndex,
                                selectedColor: white,
                                selectedTileColor: primary,
                                titleTextStyle: semi16TextStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: black),
                                subtitleTextStyle: semi16TextStyle.copyWith(
                                    fontSize: 12, color: black),
                                title: Text(
                                  "${widget.arguments!.list?[index]["desc"]}",
                                  style: TextStyle(
                                      color: _selectedIndex == index
                                          ? white
                                          : black),
                                ),
                                subtitle: Text(
                                  "${widget.arguments!.list?[index]["info"]}",
                                  style: TextStyle(
                                      color: _selectedIndex == index
                                          ?white
                                          : black),
                                ),
                                trailing: Icon(CupertinoIcons.arrow_down_circle,
                                    color: _selectedIndex == index
                                        ? white
                                        : black),
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                              ),
                            )
                          ],
                        );
                      },
                      itemBuilder: (context, index) {
                        return Text("");
                      },
                    ),
                    Text("More")
                    // PopScope(canPop: false,
                    //   onPopInvoked: (bool didPop) {
                    //     if (didPop) {
                    //       return;
                    //     }
                    //     Navigator.pop(context);
                    //   },
                    //   child: TextButton(
                    //     onPressed: () {
                    //       Navigator.pop(context);
                    //     },  child: const Text('Go back'),
                    //   ),)
                  ]))
                ],
              ),
            ),
          )),
        ));
  }
}

