import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/colors.dart';

class DistenceFilter extends StatefulWidget {
  const DistenceFilter({Key? key}) : super(key: key);

  @override
  State<DistenceFilter> createState() => _DistenceFilterState();
}

class _DistenceFilterState extends State<DistenceFilter> {
  int value = 0;
  List<String> types = [
    "Service Providers",
    "Curated Shops",
    "Service Provider"
  ];
  int selectedtype = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 44.5,
      decoration: const BoxDecoration(
          color: Color(0xffF8F8F8),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 6.13,
                right: SizeConfig.widthMultiplier * 6.13,
                top: SizeConfig.widthMultiplier * 6.13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: "Filters",
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 2.4,
                ),
                SizedBox(
                  height: AppHeights.height23,
                ),
                Row(
                  children: [
                    TextView(
                      text: "Distance",
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 2.04,
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {
                          setState(() {
                            if (value == 0) {
                              value = value;
                            } else
                              value = value - 1;
                          });
                        },
                        child: SvgPicture.asset(AppIcons.minuscircle)),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    TextView(
                      text: value.toString() + " km",
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.8,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            value = value + 1;
                          });
                        },
                        child: SvgPicture.asset(AppIcons.addcircle)),
                  ],
                ),
                SizedBox(
                  height: AppHeights.height25,
                ),
                TextView(
                  text: "Type",
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 2.04,
                ),
                SizedBox(
                  height: AppHeights.height20,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                ...List.generate(
                    types.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedtype = index;
                            });
                          },
                          child: AnimatedContainer(
                            margin: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 6),
                            decoration: BoxDecoration(
                                color: selectedtype == index
                                    ? AppColors.primarylightColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black12)),
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 4,
                                vertical: SizeConfig.heightMultiplier * 1),
                            duration: const Duration(milliseconds: 200),
                            child: TextView(
                              text: types[index],
                              size: SizeConfig.textMultiplier * 1.9,
                              fontWeight: FontWeight.w600,
                              color: selectedtype == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ))
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: AppHeights.height50 * 2,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6.13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(
                    callback: () {
                      setState(() {
                        value = 0;
                        selectedtype = -1;
                      });
                    },
                    radius: 90,
                    height: AppHeights.height50,
                    width: AppWidths.width150,
                    colour: Colors.white,
                    title: "Reset (4)",
                    textcolour: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextButton(
                    callback: () {},
                    radius: 90,
                    fontWeight: FontWeight.w600,
                    height: AppHeights.height50,
                    width: AppWidths.width150,
                    colour: AppColors.primarylightColor,
                    title: "Apply",
                    textcolour: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
