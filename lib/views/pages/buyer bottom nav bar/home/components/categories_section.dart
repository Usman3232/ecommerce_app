import 'package:ecommerce_app/models/homemodels/categoriesmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/homecatogriescard.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 13,
      child: ListView.builder(
        itemCount: homecategories_model.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.8),
            child: HomeCategoriesWidget(
                image: homecategories_model[index].image,
                title: homecategories_model[index].title,
                items: homecategories_model[index].items),
          );
        },
      ),
    );
  }
}
