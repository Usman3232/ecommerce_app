import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnyTimeSellerCard extends StatefulWidget {
  AnyTimeSellerCard({
    Key? key,
    required this.image,
    required this.favourite,
    required this.title,
    required this.location,
    required this.time,
    required this.reviews,
    required this.rating,
    this.islocation = false,
    this.onpressed,
  }) : super(key: key);
  final String image, title, location, time;
  final int reviews;
  final double rating;
  bool favourite;
  bool islocation;
  VoidCallback? onpressed;

  @override
  State<AnyTimeSellerCard> createState() => _AnyTimeSellerCardState();
}

class _AnyTimeSellerCardState extends State<AnyTimeSellerCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Container(
        height: AppHeights.height236,
        width: AppWidths.width292,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: AppHeights.height151,
                  // width: AppWidths.width292,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
                  ),
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 3.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppHeights.height10,
                  ),
                  Row(
                    children: [
                      TextView(
                        text: widget.title,
                        size: SizeConfig.textMultiplier * 2.04,
                        fontWeight: FontWeight.w500,
                      ),
                      Spacer(),
                      widget.islocation
                          ? Container(
                              height: 22.5,
                              width: 22.5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffEAEFF6)),
                              child: Icon(
                                Icons.location_on,
                                color: AppColors.primarylightColor,
                                size: SizeConfig.imageSizeMultiplier * 4,
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * .6,
                  ),
                  TextView(
                    text: widget.location,
                    size: SizeConfig.textMultiplier * 1.53,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primarylightColor,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * .6,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.star),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 1.6,
                      ),
                      TextView(
                        text: widget.rating.toString(),
                        size: SizeConfig.textMultiplier * 1.65,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 1.6,
                      ),
                      TextView(
                        text: widget.reviews.toString() + "( Reviews)",
                        size: SizeConfig.textMultiplier * 1.65,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7E7C7C),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Open till ',
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.65,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textColor)),
                            TextSpan(
                                text: widget.time,
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.65,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primarylightColor)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
