
import 'package:ecommerce_app/models/homemodels/curatedshopmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/curatedshopcard.dart';
import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecialForYouSection extends StatelessWidget {
  const SpecialForYouSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 29,
      child: ListView.builder(
        itemCount: curatedshop_model.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.13),
            child: CuratedShopCard(
                image: curatedshop_model[index].image,
                title: curatedshop_model[index].title,
                location: curatedshop_model[index].location,
                reviews: curatedshop_model[index].reviews,
                rating: curatedshop_model[index].rating,
                onpressed: () {
                  Get.to(Stores(title: "Curated Stores", isstore: "iscurated"));
                },
                favourite: curatedshop_model[index].favourite),
          );
        },
      ),
    );
  }
}
