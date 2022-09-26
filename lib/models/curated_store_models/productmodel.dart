import 'package:ecommerce_app/constants/images.dart';

class ProductModel {
  final String image, title, location, price;
  final int reviews;
  final double rating;
  bool favourite;

  ProductModel(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.price,
      required this.location,
      required this.reviews,
      required this.rating});
}

List<ProductModel> product_model = [
  ProductModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      price: "4,500",
      rating: 4.5),
  ProductModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      price: "4,500",
      rating: 4.5),
  ProductModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      price: "4,500",
      rating: 4.5),
  ProductModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      price: "4,500",
      rating: 4.5),
  ProductModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      price: "4,500",
      reviews: 1045,
      rating: 4.5)
];
