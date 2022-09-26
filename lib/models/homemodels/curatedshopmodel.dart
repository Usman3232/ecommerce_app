import 'package:ecommerce_app/constants/images.dart';

class CuratedShopModel {
  final String image, title, location;
  final int reviews;
  final double rating;
  bool favourite;

  CuratedShopModel(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating});
}

List<CuratedShopModel> curatedshop_model = [
  CuratedShopModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  CuratedShopModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  CuratedShopModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  CuratedShopModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  CuratedShopModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5)
];
