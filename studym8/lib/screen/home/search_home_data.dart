import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';

class SearchBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Bar Tutorial',
      home: SearchScreen(),
    );
  }
}

final fieldText = TextEditingController();

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key, required this.onQueryChanged, required this.onClear});

  final dynamic onQueryChanged;
  final dynamic onClear;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: white,
            border: Border.all(color: primary),
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
          child: ListTile(
              leading: const Icon(
                CupertinoIcons.search,
                color: primary,
              ),
              title: TextField(
                controller: fieldText,
                onChanged: widget.onQueryChanged,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  CupertinoIcons.xmark,
                  color: primary,
                ),
                onPressed: () {
                  setState(() {
                    fieldText.clear();
                  });
                },
              )),
        ),
      ],
    ));
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isShow = true;
  List<String> data = [
    'Figma Design Principles',
    'Introduction to UI/UX',
    'Adobe XD Basics',
    'Adobe Photoshop Essentials',
    'Adobe Illustrator Essentials',
    'Figma Design Principles',
    'Introduction to UI/UX',
    'Adobe XD Basics',
    'Adobe Photoshop Essentials',
    'Adobe Illustrator Essentials',
    'Figma Design Principles',
    'Introduction to UI/UX',
    'Adobe XD Basics',
    'Adobe Photoshop Essentials',
    'Adobe Illustrator Essentials',
  ];

  List<String> searchResults = [];

  @override
  void initState() {
    searchResults = data;
    super.initState();
  }

  void onClear() {
    setState(() {
      fieldText.clear();
      searchResults = [];
      isShow == true;
    });
  }

  void onQueryChanged(String query) {

    setState(() {
      if (query.isNotEmpty && searchResults.isEmpty) {
        isShow == false;
      }
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SearchBar(onQueryChanged: onQueryChanged, onClear: onClear),
            isShow == true
                    ? Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recent",
                                  style: robotoBlackBold16TextStyle,
                                ),
                                TextButton(
                                    onPressed: onClear,
                                    child: Text(
                                      "Clear all",
                                      style: semi16TextStyle,
                                    ))
                              ],
                            ),
                            Divider(),
                            Expanded(
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: searchResults.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      title: Text(searchResults[index]),
                                      trailing: IconButton(
                                        icon: Icon(
                                          CupertinoIcons.xmark,
                                          color: black,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            searchResults.removeWhere((item) =>
                                                item == searchResults[index]);
                                          });
                                        },
                                      ));
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    : Expanded(
                        child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/NotFound.png")),
                            Padding(
                                padding: EdgeInsets.only(top: 64, bottom: 24),
                                child: Text(
                                  "Not Found",
                                  style: roboto24TextStyle,
                                )),
                            Text(
                              "Sorry the keyword you enteredcannot be found, please check again orsearch with another term",
                              textAlign: TextAlign.center,
                              style: roboto16TextStyle,
                            )
                          ],
                        ),
                      )
            )
          ]),
        ));
  }
}
