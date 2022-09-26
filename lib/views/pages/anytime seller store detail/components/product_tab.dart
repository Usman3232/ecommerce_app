
import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../curated_store_detail/components/product_card.dart';
import '../../customize gift hamper/customize_gift_hamper.dart';

class ProductsTab extends StatefulWidget {
  const ProductsTab({Key? key}) : super(key: key);

  @override
  State<ProductsTab> createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          // padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
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
                        Get.to(CustomizeGiftHamper());
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
