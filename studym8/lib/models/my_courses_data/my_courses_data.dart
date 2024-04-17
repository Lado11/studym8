import 'package:flutter/material.dart';

enum MyCoursesEnum {
  cardOne(
      image: "assets/Rectangle 30.png",
      title: "Introduction to UI Design",
      desc: "3 hrs 45 mins",
      info: "15 videos",
      progress: 0.75,
      list: [
        {
          "title": "Section 1 - Introduction",
          "desc": "Introduction",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 2 - Interface & Layout",
          "desc": "Interface & Layout",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 3 - Basic Editing",
          "desc": "Basic Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 4 - Intermediate Editing",
          "desc": "Intermediate Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        }
      ]),
  cardTwo(
      image: "assets/Rectangle 44.png",
      title: "Basics of Figma",
      desc: "2 hrs 45 mins",
      info: "13 videos",
      progress: 0.55,
      list: [
        {
          "title": "Section 1 - Introduction2",
          "desc": "Introduction",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 2 - Interface & Layout",
          "desc": "Interface & Layout",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 3 - Basic Editing",
          "desc": "Basic Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 4 - Intermediate Editing",
          "desc": "Intermediate Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        }
      ]),
  cardThree(
      image: "assets/Rectangle 44 (1).png",
      title: "Introduction to Data Science",
      desc: "2 hrs 45 mins",
      info: "14 videos",
      progress: 0.4,
      list: [
        {
          "title": "Section 1 - Introduction3",
          "desc": "Introduction",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 2 - Interface & Layout",
          "desc": "Interface & Layout",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 3 - Basic Editing",
          "desc": "Basic Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 4 - Intermediate Editing",
          "desc": "Intermediate Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        }
      ]),
  cardFour(
      image: "assets/Rectangle 44 (2).png",
      title: "Basics of Adobe XD",
      desc: "2 hrs 45 mins",
      info: "12 videos",
      progress: 0.85,
      list: [
        {
          "title": "Section 1 - Introduction4",
          "desc": "Introduction",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 2 - Interface & Layout",
          "desc": "Interface & Layout",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 3 - Basic Editing",
          "desc": "Basic Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 4 - Intermediate Editing",
          "desc": "Intermediate Editing",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        },
        {
          "title": "Section 5 - Titles & Graphics",
          "desc": "Titles & Graphics",
          "info": "Video - 01:30 mins"
        }
      ]),
  ;

  const MyCoursesEnum(
      {required this.title,
      required this.image,
      required this.info,
      required this.desc,
      required this.progress,
      this.list});

  final String title;
  final String image;
  final String desc;
  final String info;
  final double progress;
  final List<Map<String, dynamic>>? list;
}
