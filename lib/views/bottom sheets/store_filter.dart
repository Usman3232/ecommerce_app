import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class StoreFilter extends StatefulWidget {
  const StoreFilter({Key? key}) : super(key: key);

  @override
  State<StoreFilter> createState() => _StoreFilterState();
}

class _StoreFilterState extends State<StoreFilter> {
  SfRangeValues _values = SfRangeValues(20, 30);
  List<String> sortby = [
    "Top Rated",
    "Lowest Priced",
    "Medium Priced",
    "Highest Priced"
  ];
  int selectedsortby = 0;
  List<String> gender = ["Man", "Woman", "Unisex"];
  int selectedgender = 0;
  List<String> Categories = ["Clothes", "Electronics", "Sports", "Watches"];
  int selectedcategories = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.heightMultiplier * 82,
        decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: AppHeights.height14,
                  ),
                  TextView(
                    text: "Price Range",
                    fontWeight: FontWeight.w600,
                    size: SizeConfig.textMultiplier * 2.04,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.heightMultiplier * 2.5),
                    child: SfRangeSlider(
                      min: 0,
                      max: 10000,
                      interval: 10,
                      startThumbIcon: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 10,
                      ),
                      endThumbIcon: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 10,
                      ),
                      activeColor: AppColors.primarylightColor,
                      inactiveColor: Colors.grey.shade200,
                      numberFormat: NumberFormat('₹'),
                      enableTooltip: true,
                      // shouldAlwaysShowTooltip: true,

                      tooltipShape: SfPaddleTooltipShape(),
                      values: _values,
                      onChanged: (dynamic newValues) {
                        setState(() {
                          _values = newValues;
                        });
                      },
                    ),
                  ),
                  Row(
                    children: [
                      TextView(
                        text: "₹0",
                        size: SizeConfig.textMultiplier * 1.53,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffAAAAAA),
                      ),
                      Spacer(),
                      TextView(
                        text: "₹9,750",
                        size: SizeConfig.textMultiplier * 1.53,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffAAAAAA),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  TextView(
                    text: "Sort By",
                    fontWeight: FontWeight.w600,
                    size: SizeConfig.textMultiplier * 2.04,
                  ),
                  SizedBox(
                    height: AppHeights.height20,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Row(
                  children: [
                    ...List.generate(
                        sortby.length,
                        (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedsortby = index;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.widthMultiplier * 6),
                                decoration: BoxDecoration(
                                    color: selectedsortby == index
                                        ? AppColors.primarylightColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.black12)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 4,
                                    vertical: SizeConfig.heightMultiplier * 1),
                                duration: const Duration(milliseconds: 200),
                                child: TextView(
                                  text: sortby[index],
                                  size: SizeConfig.textMultiplier * 1.9,
                                  fontWeight: FontWeight.w600,
                                  color: selectedsortby == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: AppHeights.height30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 6.13,
              ),
              child: TextView(
                text: "Gender",
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.04,
              ),
            ),
            SizedBox(
              height: AppHeights.height20,
            ),
            Row(
              children: [
                ...List.generate(
                    gender.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedgender = index;
                            });
                          },
                          child: AnimatedContainer(
                            margin: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 6),
                            decoration: BoxDecoration(
                                color: selectedgender == index
                                    ? AppColors.primarylightColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black12)),
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 4,
                                vertical: SizeConfig.heightMultiplier * 1),
                            duration: const Duration(milliseconds: 200),
                            child: TextView(
                              text: gender[index],
                              size: SizeConfig.textMultiplier * 1.9,
                              fontWeight: FontWeight.w600,
                              color: selectedgender == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: AppHeights.height30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 6.13,
              ),
              child: TextView(
                text: "Categories",
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 2.04,
              ),
            ),
            SizedBox(
              height: AppHeights.height20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Row(
                  children: [
                    ...List.generate(
                        Categories.length,
                        (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedcategories = index;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.widthMultiplier * 6),
                                decoration: BoxDecoration(
                                    color: selectedcategories == index
                                        ? AppColors.primarylightColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.black12)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 4,
                                    vertical: SizeConfig.heightMultiplier * 1),
                                duration: const Duration(milliseconds: 200),
                                child: TextView(
                                  text: Categories[index],
                                  size: SizeConfig.textMultiplier * 1.9,
                                  fontWeight: FontWeight.w600,
                                  color: selectedcategories == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ))
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              height: AppHeights.height50 * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 6.13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      callback: () {
                        setState(() {
                          selectedsortby = -1;
                          selectedgender = -1;
                          selectedcategories = -1;
                        });
                      },
                      radius: 90,
                      height: AppHeights.height50,
                      width: AppWidths.width150,
                      colour: Colors.white,
                      title: "Reset (4)",
                      textcolour: Colors.black,
                    ),
                    CustomTextButton(
                      callback: () {},
                      radius: 90,
                      height: AppHeights.height50,
                      width: AppWidths.width150,
                      colour: AppColors.primarylightColor,
                      title: "Apply",
                      textcolour: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
