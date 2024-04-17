enum Social {
  google(title: "Google", image: 'assets/name3.png',),
  apple(title: "Apple", image: "assets/Vector (1).png"),
  faceBook(title: "FaceBook", image: "assets/FaceBook.png");

  const Social({required this.title, required this.image});

  final String title;
  final String image;
}

