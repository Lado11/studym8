import 'package:flutter/material.dart';

class HomeData {
  final String info;
  final String title;
  final String desc;
  final int id;

  HomeData(
      {required this.title,
      required this.desc,
      required this.info,
      required this.id});
}

List<HomeData> homeData = [
  HomeData(
      id: 1,
      info: "Course 1 of 9",
      title: "Introduction to Front-End Development1",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 2,
      info: "Course 2 of 9",
      title: "Introduction to Front-End Development2",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 3,
      info: "Course 3 of 9",
      title: "Introduction to Front-End Development3",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 4,
      info: "Course 4 of 9",
      title: "Introduction to Front-End Development4",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 5,
      info: "Course 5 of 9",
      title: "Introduction to Front-End Development5",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 6,
      info: "Course 6 of 9",
      title: "Introduction to Front-End Development6",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 7,
      info: "Course 7 of 9",
      title: "Introduction to Front-End Development7",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 8,
      info: "Course 8 of 9",
      title: "Introduction to Front-End Development8",
      desc: "Overall Progress 37%"),
  HomeData(
      id: 9,
      info: "Course 9 of 9",
      title: "Introduction to Front-End Development9",
      desc: "Overall Progress 37%"),
];
