

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselCard extends StatefulWidget {
  final String image;
  final String title;
  final double price;
  final Color titleColor;
  bool iscontainer;
  CarouselCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.titleColor,
    this.iscontainer = false,
  }) : super(key: key);

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: widget.iscontainer
                ? SizeConfig.widthMultiplier * 8.5
                : SizeConfig.widthMultiplier * 2.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff52BD94),
                    borderRadius: BorderRadius.circular(
                        SizeConfig.widthMultiplier * 1.75)),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2.3,
                        vertical: SizeConfig.heightMultiplier * 0.3),
                    child: TextView(
                      text: "NEW",
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.53,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text: widget.title,
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.55,
                color: widget.titleColor,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text: '₹ ${widget.price}',
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 1.53,
                color: widget.titleColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
