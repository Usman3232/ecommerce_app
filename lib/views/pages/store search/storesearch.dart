import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';



import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class StoreSearch extends StatefulWidget {
  const StoreSearch({Key? key}) : super(key: key);

  @override
  State<StoreSearch> createState() => _StoreSearchState();
}

SfRangeValues _values = SfRangeValues(20, 30);

//bool value for sort by
bool issortbyfocus1 = false;
bool issortbyfocus2 = false;
bool issortbyfocus3 = false;
bool issortbyfocus4 = false;

//bool value for gender
bool isgender1 = false;
bool isgender2 = false;
bool isgender3 = false;

//bool value for categories
bool iscategory1 = false;
bool iscategory2 = false;
bool iscategory3 = false;
bool iscategory4 = false;

class _StoreSearchState extends State<StoreSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: AppHeights.height62,
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3.9),
                child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(AppIcons.back)),
              ),
              Flexible(
                  child:
                      AuthTextInputField(hintText: "Search a curated store")),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3.9),
                child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (_) => Container(
                                // height: SizeConfig.heightMultiplier * 44.5,
                                height: 660,
                                decoration: BoxDecoration(
                                    color: Color(0xffF8F8F8),
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(
                                            30))),
                                child: StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.widthMultiplier * 6.13,
                                            right: SizeConfig.widthMultiplier * 6.13,
                                            top: SizeConfig.widthMultiplier * 6.13),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              margin: EdgeInsets.only(
                                                  top: SizeConfig
                                                          .heightMultiplier *
                                                      2.5),
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
                                                activeColor:
                                                    AppColors.primarylightColor,
                                                inactiveColor:
                                                    Colors.grey.shade200,
                                                numberFormat: NumberFormat('₹'),
                                                enableTooltip: true,
                                                // shouldAlwaysShowTooltip: true,

                                                tooltipShape:
                                                    SfPaddleTooltipShape(),
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
                                                  color: Color(0xffAAAAAA),
                                                ),
                                                Spacer(),
                                                TextView(
                                                  text: "₹9,750",
                                                  size: SizeConfig.textMultiplier * 1.53,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffAAAAAA),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      2,
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
                                              SelectWidget(
                                                title: 'Top Rated',
                                                isfocus: issortbyfocus1,
                                                onPressed: () {
                                                  setState(() {
                                                    issortbyfocus1 =
                                                        !issortbyfocus1;
                                                    issortbyfocus2 = false;
                                                    issortbyfocus3 = false;
                                                    issortbyfocus4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Lowest Priced',
                                                isfocus: issortbyfocus2,
                                                onPressed: () {
                                                  setState(() {
                                                    issortbyfocus1 = false;
                                                    issortbyfocus2 =
                                                        !issortbyfocus2;
                                                    issortbyfocus3 = false;
                                                    issortbyfocus4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Middle Priced',
                                                isfocus: issortbyfocus3,
                                                onPressed: () {
                                                  setState(() {
                                                    issortbyfocus1 = false;
                                                    issortbyfocus2 = false;
                                                    issortbyfocus3 =
                                                        !issortbyfocus3;
                                                    issortbyfocus4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Highest Priced',
                                                isfocus: issortbyfocus4,
                                                onPressed: () {
                                                  setState(() {
                                                    issortbyfocus1 = false;
                                                    issortbyfocus2 = false;
                                                    issortbyfocus3 = false;
                                                    issortbyfocus4 =
                                                        !issortbyfocus4;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: AppHeights.height30,
                                      ),
                                      TextView(
                                        text: "Gender",
                                        fontWeight: FontWeight.w600,
                                        size: SizeConfig.textMultiplier * 2.04,
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
                                              SelectWidget(
                                                title: 'Man',
                                                isfocus: isgender1,
                                                onPressed: () {
                                                  setState(() {
                                                    isgender1 = !isgender1;
                                                    isgender2 = false;
                                                    isgender3 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Woman',
                                                isfocus: isgender2,
                                                onPressed: () {
                                                  setState(() {
                                                    isgender1 = false;
                                                    isgender2 = !isgender2;
                                                    isgender3 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Unisex',
                                                isfocus: isgender3,
                                                onPressed: () {
                                                  setState(() {
                                                    isgender1 = false;
                                                    isgender2 = false;
                                                    isgender3 = !isgender3;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: AppHeights.height30,
                                      ),
                                      TextView(
                                        text: "Categories",
                                        fontWeight: FontWeight.w600,
                                        size: SizeConfig.textMultiplier * 2.04,
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
                                              SelectWidget(
                                                title: 'Clothes',
                                                isfocus: iscategory1,
                                                onPressed: () {
                                                  setState(() {
                                                    iscategory1 = !iscategory1;
                                                    iscategory2 = false;
                                                    iscategory3 = false;
                                                    iscategory4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Electronics',
                                                isfocus: iscategory2,
                                                onPressed: () {
                                                  setState(() {
                                                    iscategory1 = false;
                                                    iscategory2 = !iscategory2;
                                                    iscategory3 = false;
                                                    iscategory4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Sports',
                                                isfocus: iscategory3,
                                                onPressed: () {
                                                  setState(() {
                                                    iscategory1 = false;
                                                    iscategory2 = false;
                                                    iscategory3 = !iscategory3;
                                                    iscategory4 = false;
                                                  });
                                                },
                                              ),
                                              SelectWidget(
                                                title: 'Watches',
                                                isfocus: iscategory4,
                                                onPressed: () {
                                                  setState(() {
                                                    iscategory1 = false;
                                                    iscategory2 = false;
                                                    iscategory3 = false;
                                                    iscategory4 = !iscategory4;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: AppHeights.height50 * 2,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(
                                                    30))),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizeConfig.widthMultiplier * 6.13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomTextButton(
                                                callback: () {
                                                  setState(() {
                                                    issortbyfocus1 = false;
                                                    issortbyfocus2 = false;
                                                    issortbyfocus3 = false;
                                                    issortbyfocus4 = false;
                                                    iscategory1 = false;
                                                    iscategory2 = false;
                                                    iscategory3 = false;
                                                    iscategory4 = false;
                                                    isgender1 = false;
                                                    isgender2 = false;
                                                    isgender3 = false;
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
                                                colour:
                                                    AppColors.primarylightColor,
                                                title: "Apply",
                                                textcolour: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ));
                    },
                    child: SvgPicture.asset(AppIcons.filter)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SelectWidget extends StatefulWidget {
  const SelectWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isfocus,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  final bool isfocus;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.heightMultiplier * 1.6),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1.6),
          decoration: BoxDecoration(
              color: widget.isfocus
                  ? AppColors.primarylightColor
                  : Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black12,
              )),
          child: TextView(
            text: widget.title,
            size: SizeConfig.textMultiplier * 2.04,
            color: widget.isfocus ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
