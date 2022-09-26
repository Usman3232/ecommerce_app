import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatefulWidget {
  ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating,
      required this.favourite,
      required this.price,
      required this.onTap})
      : super(key: key);
  final String image, title, location, price;
  final int reviews;
  final double rating;
  bool favourite;
  final VoidCallback onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: widget.onTap,
              child: Container(
                height: AppHeights.height151,
                width: AppWidths.width150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 1.9,
              left: SizeConfig.widthMultiplier * 4.2,
              child: Container(
                  height: AppHeights.height25,
                  width: AppWidths.width25,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.widthMultiplier * .8),
                    child: SvgPicture.asset(AppIcons.addtocart),
                  )),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 1.9,
              right: SizeConfig.widthMultiplier * 4.2,
              child: Container(
                  height: AppHeights.height25,
                  width: AppWidths.width25,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.favourite = !widget.favourite;
                      });
                    },
                    child: widget.favourite
                        ? Icon(
                            Icons.favorite_rounded,
                            color: AppColors.primarylightColor,
                            size: SizeConfig.imageSizeMultiplier * 5,
                          )
                        : Icon(
                            Icons.favorite_outline_rounded,
                            color: AppColors.primarylightColor,
                            size: SizeConfig.imageSizeMultiplier * 5,
                          ),
                  )),
            )
          ],
        ),
        SizedBox(
          height: AppHeights.height8,
        ),
        TextView(
          text: widget.title,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.53,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * .4,
        ),
        TextView(
          text: widget.location,
          fontWeight: FontWeight.w400,
          size: SizeConfig.textMultiplier * 1.28,
          color: AppColors.primarylightColor,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * .4,
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcons.star),
            SizedBox(
              width: SizeConfig.widthMultiplier * 1.6,
            ),
            TextView(
              text: widget.rating.toString(),
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 1.4,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 1.6,
            ),
            TextView(
              text: "(" + widget.reviews.toString() + " Reviews)",
              fontWeight: FontWeight.w400,
              size: SizeConfig.textMultiplier * 1.4,
              color: Color(0xff7E7C7C),
            ),
          ],
        ),
        // SizedBox(height: SizeConfig.heightMultiplier*.5,),
        TextView(
          text: "₹" + widget.price,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.8,
        )
      ],
    );
  }
}
