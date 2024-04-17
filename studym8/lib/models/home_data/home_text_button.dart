import 'package:flutter/material.dart';

class HomeTextButton {
  final String title;

  HomeTextButton({
    required this.title,
  });
}

List<HomeTextButton> homeTextButtonData = [
  HomeTextButton(
    title: "Health",
  ),
  HomeTextButton(
    title: "Arts & Humanities",
  ),
  HomeTextButton(
    title: "Music",
  ),
  HomeTextButton(
    title: "Computer Science",
  ),
];
