
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/carousel_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductAddNew extends StatelessWidget {
  const ProductAddNew({
    Key? key,
    required this.controller,
    required this.pages,
  }) : super(key: key);

  final PageController controller;
  final List<CarouselCard> pages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4.75),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 27.1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (BuildContext context, index) {
                return pages[index];
              },
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 2.1,
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotHeight: SizeConfig.heightMultiplier * 0.4,
                  dotWidth: SizeConfig.widthMultiplier * 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
