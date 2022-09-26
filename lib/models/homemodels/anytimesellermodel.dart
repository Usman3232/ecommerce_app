class AnyTimeSellerModel {
  final String image, title, location, time;
  final int reviews;
  final double rating;
  bool favourite;

  AnyTimeSellerModel(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.location,
      required this.time,
      required this.reviews,
      required this.rating});
}

List<AnyTimeSellerModel> anytimeseller_model = [
  AnyTimeSellerModel(
      image: "assets/images/product.png",
      title: "Organic Products by Amit",
      location: "KBR Park ",
      time: "5pm ",
      reviews: 1045,
      rating: 4.5),
  AnyTimeSellerModel(
      image: "assets/images/product.png",
      title: "Organic Products by Amit",
      location: "KBR Park ",
      time: "5pm ",
      reviews: 1045,
      rating: 4.5),
  AnyTimeSellerModel(
      image: "assets/images/product.png",
      title: "Organic Products by Amit",
      location: "KBR Park ",
      time: "5pm ",
      reviews: 1045,
      rating: 4.5),
  AnyTimeSellerModel(
      image: "assets/images/product.png",
      title: "Organic Products by Amit",
      location: "KBR Park ",
      time: "5pm ",
      reviews: 1045,
      rating: 4.5),
  AnyTimeSellerModel(
      image: "assets/images/product.png",
      title: "Organic Products by Amit",
      location: "KBR Park ",
      time: "5pm ",
      reviews: 1045,
      rating: 4.5),
];
