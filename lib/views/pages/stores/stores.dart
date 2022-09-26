import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/models/curated_store_models/categoriesmodel.dart';
import 'package:ecommerce_app/models/homemodels/anytimesellermodel.dart';
import 'package:ecommerce_app/models/homemodels/curatedshopmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/anytime%20seller%20store%20detail/anytime_store_detail.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/anytimesellercard.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/curatedshopcard.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/curated_store_detail.dart';
import 'package:ecommerce_app/views/pages/store%20search/storesearch.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'components/categoriescard.dart';

class Stores extends StatelessWidget {
  const Stores({Key? key, required this.title, required this.isstore})
      : super(key: key);
  final String title, isstore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(SizeConfig.widthMultiplier * 4.8),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(
              AppIcons.back,
              color: Color(0xff141325),
            ),
          ),
        ),
        title: TextView(
          text: title,
          size: SizeConfig.textMultiplier * 1.92,
          fontWeight: FontWeight.w600,
          color: AppColors.primarydarkColor,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
            child: GestureDetector(
                onTap: () {
                  Get.to(StoreSearch());
                },
                child: SvgPicture.asset(AppIcons.search)),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6.13),
              child: Row(
                children: [
                  TextView(
                    text: "Categories",
                    fontWeight: FontWeight.w600,
                    size: SizeConfig.textMultiplier * 1.65,
                    color: AppColors.textColor,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: const Color(0xff141325),
                    size: SizeConfig.imageSizeMultiplier * 5,
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppHeights.height14,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 10,
              child: ListView.builder(
                itemCount: curatedcategories_model.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 6.35),
                    child: CategoriesCard(
                        image: curatedcategories_model[index].image,
                        title: curatedcategories_model[index].title),
                  );
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            isstore == "iscurated"
                ? Expanded(
                    child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: curatedshop_model.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: SizeConfig.heightMultiplier * .10,
                        mainAxisSpacing: SizeConfig.heightMultiplier * 2,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 6.35),
                        child: CuratedShopCard(
                          image: curatedshop_model[index].image,
                          title: curatedshop_model[index].title,
                          location: curatedshop_model[index].location,
                          reviews: curatedshop_model[index].reviews,
                          rating: curatedshop_model[index].rating,
                          favourite: curatedshop_model[index].favourite,
                          onpressed: () {
                            Get.to(CuratedStoreDetail());
                          },
                        ),
                      );
                    },
                  ))
                : isstore == "isanytime"
                    ? Expanded(
                        child: ListView.builder(
                        itemCount: anytimeseller_model.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 6.13,
                                right: SizeConfig.widthMultiplier * 6.13,
                                bottom: SizeConfig.heightMultiplier * 2),
                            child: AnyTimeSellerCard(
                                image: anytimeseller_model[index].image,
                                favourite: anytimeseller_model[index].favourite,
                                title: anytimeseller_model[index].title,
                                location: anytimeseller_model[index].location,
                                islocation: true,
                                time: anytimeseller_model[index].time,
                                reviews: anytimeseller_model[index].reviews,
                                onpressed: () {
                                  Get.to(AnytimeSellerStoreDetail());
                                },
                                rating: anytimeseller_model[index].rating),
                          );
                        },
                      ))
                    : SizedBox()
          ],
        ),
      ),
    );
  }
}
