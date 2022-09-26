import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_detail.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTab extends StatelessWidget {
  const NewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: product_model.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: SizeConfig.heightMultiplier * .10,
          mainAxisSpacing: SizeConfig.heightMultiplier * 2,
          // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: ProductCard(
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
        );
      },
    );
  }
}
