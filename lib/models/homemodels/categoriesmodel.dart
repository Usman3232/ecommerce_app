class HomeCategoriesModel {
  final String image, title;
  final int items;

  HomeCategoriesModel(
      {required this.image, required this.title, required this.items});
}

List<HomeCategoriesModel> homecategories_model = [
  HomeCategoriesModel(
      image: "assets/icons/shirt.svg", title: "Clothing", items: 1001),
  HomeCategoriesModel(
      image: "assets/icons/sport.svg", title: "Sports", items: 601),
  HomeCategoriesModel(
      image: "assets/icons/watch.svg", title: "Watches", items: 509),
  HomeCategoriesModel(
      image: "assets/icons/speaker.svg", title: "Electronics", items: 755),
  HomeCategoriesModel(
      image: "assets/icons/shirt.svg", title: "jackets", items: 800),
  HomeCategoriesModel(
      image: "assets/icons/shirt.svg", title: "Clothing", items: 1001),
];
