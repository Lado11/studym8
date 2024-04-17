enum InfoBlock {
  online(title: "100% online", image: 'assets/Online.png'),
  fixible(title: "Flexible deadlines", image: "assets/Fix.png"),
  medium(title: "Medium of Instruction: English", image: "assets/Medium.png");

  const InfoBlock({required this.title, required this.image});

  final String title;
  final String image;
}
