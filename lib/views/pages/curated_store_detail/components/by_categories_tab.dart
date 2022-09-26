import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_detail.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/product_card.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ByCategoriesTab extends StatefulWidget {
  const ByCategoriesTab({Key? key}) : super(key: key);

  @override
  State<ByCategoriesTab> createState() => _ByCategoriesTabState();
}

class _ByCategoriesTabState extends State<ByCategoriesTab> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All Products",
      "Glasses",
      "Shirts",
      "Pents",
    ];
    return Column(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  categories.length,
                  (index) => GestureDetector(
                        onTap: () {
                          selectedCategory = index;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          decoration: BoxDecoration(
                              border: selectedCategory == index
                                  ? Border.all(
                                      color: AppColors.primarydarkColor)
                                  : null,
                              color: selectedCategory == index
                                  ? AppColors.primarylightColor.withOpacity(.3)
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 5,
                              vertical: SizeConfig.heightMultiplier * 0.8),
                          margin: EdgeInsets.only(
                              left: index == 0
                                  ? SizeConfig.widthMultiplier * 6
                                  : 0,
                              right: SizeConfig.widthMultiplier * 4),
                          child: TextView(
                            text: categories[index],
                            fontWeight: FontWeight.w500,
                            size: SizeConfig.textMultiplier * 1.6,
                            color: selectedCategory == index
                                ? AppColors.primarydarkColor
                                : Colors.grey,
                          ),
                        ),
                      ))
            ],
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
          itemCount: product_model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: SizeConfig.heightMultiplier * .10,
              mainAxisSpacing: SizeConfig.heightMultiplier * 2,
              // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
              child: Column(
                children: [
                  ProductCard(
                      image: product_model[index].image,
                      title: product_model[index].title,
                      location: product_model[index].location,
                      reviews: product_model[index].reviews,
                      rating: product_model[index].rating,
                      price: product_model[index].price,
                      onTap: () {
                        Get.to(ProductDetail(
                          product: product_model[index],
                        ));
                      },
                      favourite: product_model[index].favourite),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
