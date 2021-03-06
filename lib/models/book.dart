class Book {
  final int id;
  final String image;
  final String title;
  final String auth;
  final double rating;
  final String description;

  Book({
    this.description,
    this.id,
    this.image,
    this.title,
    this.auth,
    this.rating,
  });
}

List<Book> listBook = [
  Book(
    id: 0,
    image: "assets/images/book-1.png",
    title: "Crushing & Influence",
    auth: "Gary Venchuk",
    description:
        "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
    rating: 4.9,
  ),
  Book(
    id: 1,
    image: "assets/images/book-2.png",
    title: "Top Ten Business Hacks",
    auth: "Herman Joel",
    description:
        "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
    rating: 4.8,
  )
];
