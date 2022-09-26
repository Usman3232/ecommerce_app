class HomeServiceProviderModel {
  final String image, title;
  final int reviews;
  final double rating;
  bool favourite;

  HomeServiceProviderModel(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.reviews,
      required this.rating});
}

List<HomeServiceProviderModel> homeserviceprovider_model = [
  HomeServiceProviderModel(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModel(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModel(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModel(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
  HomeServiceProviderModel(
      image: "assets/images/barber.png",
      title: "Tony and Guy",
      reviews: 1045,
      rating: 4.5),
];
