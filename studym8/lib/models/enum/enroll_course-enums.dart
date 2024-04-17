enum EnrollScorse {
  Paypal(image: 'assets/name2.png',title: "Paypal"),
  Google(image: 'assets/name3.png',title: "Google Pay"),
  Card(image:'assets/name4.png',title: "1234 1234 1232 1221"),
  Apple(image: 'assets/name1.png',title: "Apple Pay");

  const EnrollScorse({required this.title, required this.image});

  final String title;
  final String image;
}

