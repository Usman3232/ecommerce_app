import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({
    Key? key,
    required this.onpressed,
  }) : super(key: key);
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 4,
          left: SizeConfig.widthMultiplier * 4.25,
          right: SizeConfig.widthMultiplier * 4.25),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: onpressed,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 28,
              ),
              TextView(
                text: "Reviews (1045)",
                size: SizeConfig.textMultiplier * 2.04,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  minVerticalPadding: 16,
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(AppImages.loginImg),
                            fit: BoxFit.cover)),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(
                        text: "Nolan Carder",
                        size: SizeConfig.textMultiplier * 1.65,
                        fontWeight: FontWeight.w600,
                      ),
                      TextView(
                        text: "Today",
                        size: SizeConfig.textMultiplier * 1.53,
                        color: Color(0xffB7B7B7),
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              5, (index) => SvgPicture.asset(AppIcons.star))
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      TextView(
                        text:
                            "Perfect for keeping your feet dry and warm in damp conditions.",
                        size: SizeConfig.textMultiplier * 1.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
