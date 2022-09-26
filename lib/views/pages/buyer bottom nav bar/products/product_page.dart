
import 'package:ecommerce_app/models/live_tracking_model/carousel_model.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/anytime_seller_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/special_for_you_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/trending_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/products/components/product_add_new.dart';
import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/height.dart';
import '../../../../constants/icons.dart';

import '../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';
import '../../../widgets/carousel_card_widget.dart';
import '../../../widgets/sectiontitleandseeall.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = List.generate(
    listCarousel.length,
    (index) => CarouselCard(
      image: listCarousel[index].image,
      title: listCarousel[index].title,
      price: listCarousel[index].price,
      titleColor: Colors.white,
      iscontainer: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3.9),
          child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset(AppIcons.drawer)),
        ),
        title: TextView(
          text: "Products",
          color: AppColors.primarylightColor,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.9,
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.widthMultiplier * 3.9, right: SizeConfig.widthMultiplier * 3.9),
              child: SvgPicture.asset(AppIcons.cart),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 2,
              right: SizeConfig.widthMultiplier * 3.1,
              child: CircleAvatar(
                backgroundColor: AppColors.primarylightColor,
                radius: SizeConfig.widthMultiplier * 1.1,
              ),
            )
          ]),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppHeights.height10,
            ),
            ProductAddNew(controller: controller, pages: pages),
            SizedBox(
              height: AppHeights.height35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6.13),
              child: SectionTitleAndSeeAll(
                title: "From Our Curated Shops",
                titlesize: SizeConfig.textMultiplier * 2.55,
                onpress: () {
                  Get.to(Stores(
                    title: "Curated Stores",
                    isstore: "iscurated",
                  ));
                },
              ),
            ),
            SizedBox(
              height: AppHeights.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6.13),
              child: TextView(
                text: "Trending",
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.04,
              ),
            ),
            SizedBox(
              height: AppHeights.height10,
            ),
            TrendingSection(),
            SizedBox(
              height: AppHeights.height21,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.13),
              child: TextView(
                text: "Special For You",
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.04,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            SpecialForYouSection(),
            AnyTimeSellerSection(),
            SizedBox(
              height: AppHeights.height50,
            ),
          ],
        ),
      ),
    );
  }
}
