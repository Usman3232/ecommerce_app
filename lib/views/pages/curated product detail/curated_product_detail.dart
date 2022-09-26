import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/components/product_customization.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/components/product_detail_appbar.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/components/product_reviews.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_fullimage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);
  final product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = [];
  bool iscustomization = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages.add(widget.product.image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: SizeConfig.heightMultiplier * 55,
              width: SizeConfig.widthMultiplier * 100,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                padEnds: false,
                controller: controller,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(FullImage(image: widget.product.image));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.product.image),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
              top: SizeConfig.heightMultiplier * 8.2,
              left: SizeConfig.widthMultiplier * 3.5,
              right: SizeConfig.widthMultiplier * 3.5,
              child: const ProductDetailAppBar()),
          Positioned(
            top: SizeConfig.heightMultiplier * 40,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: AppColors.primarylightColor,
                dotHeight: SizeConfig.heightMultiplier * 1.3,
                dotWidth: SizeConfig.widthMultiplier * 2.6,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: SizeConfig.heightMultiplier * 57.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: iscustomization
                    ? ProductCustomization(
                        price: widget.product.price,
                        rating: widget.product.rating,
                        reviews: widget.product.reviews,
                        onpressed: () {
                          setState(() {
                            iscustomization = false;
                          });
                        },
                      )
                    : ProductReviews(
                        onpressed: () {
                          setState(() {
                            iscustomization = true;
                          });
                        },
                      )),
          ),
        ],
      ),
    );
  }
}
