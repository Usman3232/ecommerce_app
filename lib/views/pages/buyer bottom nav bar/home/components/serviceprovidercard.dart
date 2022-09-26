import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';


import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceProviderCard extends StatefulWidget {
  ServiceProviderCard({
    Key? key,
    required this.image,
    required this.title,
    required this.reviews,
    required this.rating,
    required this.favourite,
    this.onpressed,
  }) : super(key: key);
  final String image, title;
  final int reviews;
  final double rating;
  bool favourite;
  VoidCallback? onpressed;

  @override
  State<ServiceProviderCard> createState() => _ServiceProviderCardState();
}

class _ServiceProviderCardState extends State<ServiceProviderCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: widget.onpressed,
          child: Container(
            height: AppHeights.height224,
            // width: AppWidths.width150,
            width: SizeConfig.widthMultiplier * 39.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextView(
                    text: widget.title,
                    fontWeight: FontWeight.w600,
                    size: SizeConfig.textMultiplier * 1.65,
                    color: Colors.white,
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
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 1.6,
                      ),
                      TextView(
                        text: widget.reviews.toString() + "( Reviews)",
                        size: SizeConfig.textMultiplier * 1.65,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffE9E8E8),
                      ),
                    ],
                  )
                ],
              ),
            ),
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
    );
  }
}
