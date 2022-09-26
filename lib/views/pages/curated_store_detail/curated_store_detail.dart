import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/by_categories_tab.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/curated_appbar.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/new_tab.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/popular_tab.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CuratedStoreDetail extends StatefulWidget {
  const CuratedStoreDetail({Key? key}) : super(key: key);

  @override
  State<CuratedStoreDetail> createState() => _CuratedStoreDetailState();
}

class _CuratedStoreDetailState extends State<CuratedStoreDetail> {
  List<String> tags = ["4.7 km", "Clothes", "Deliverable"];
  List<String> tabs = ["Popular", "New", "By Categories"];
  int selectedTab = 0;
  List<Widget> tabWidgets = [PopularTab(), NewTab(), ByCategoriesTab()];
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
            child: Container(
              height: SizeConfig.heightMultiplier * 40.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/curatedpopular.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppHeights.height66,
                    ),
                    CuratedAppBar()
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: AppHeights.height110,
            child: Image.asset("assets/images/RalphLauren.png"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: AppHeights.height525,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 4.95,
                          vertical: SizeConfig.widthMultiplier * 6.35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextView(
                            text: "Ralph Lauren",
                            fontWeight: FontWeight.w600,
                            size: SizeConfig.textMultiplier * 2.55,
                          ),
                          SizedBox(
                            height: AppHeights.height10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.star),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 1.6,
                                  ),
                                  TextView(
                                    text: "4.5",
                                    fontWeight: FontWeight.w600,
                                    size: SizeConfig.textMultiplier * 1.4,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 1.6,
                                  ),
                                  TextView(
                                    text: "(1045 Reviews)",
                                    fontWeight: FontWeight.w400,
                                    size: SizeConfig.textMultiplier * 1.4,
                                    color: Color(0xff7E7C7C),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 3,
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                      tags.length,
                                      (index) => Container(
                                            decoration: BoxDecoration(
                                                color: AppColors
                                                    .primarylightColor
                                                    .withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    SizeConfig.widthMultiplier *
                                                        1.5,
                                                vertical: SizeConfig
                                                        .heightMultiplier *
                                                    .3),
                                            margin: EdgeInsets.only(
                                                right:
                                                    SizeConfig.widthMultiplier *
                                                        1.5),
                                            child: TextView(
                                              text: tags[index],
                                              fontWeight: FontWeight.w500,
                                              size: SizeConfig.textMultiplier *
                                                  1.2,
                                              color: AppColors.primarydarkColor,
                                            ),
                                          ))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          TextView(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui tristique fames dui integer euismod nec gravida mollis consequat.",
                            fontWeight: FontWeight.w400,
                            size: SizeConfig.textMultiplier * 1.65,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          SizedBox(
                            height: AppHeights.height8,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...List.generate(
                            tabs.length,
                            (index) => InkWell(
                                  onTap: () {
                                    selectedTab = index;
                                    setState(() {});
                                  },
                                  child: SizedBox(
                                    height: SizeConfig.heightMultiplier * 3,
                                    width: SizeConfig.widthMultiplier * 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          tabs[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: selectedTab == index
                                                  ? AppColors.primarydarkColor
                                                  : Colors.black,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.6),
                                        ),
                                        AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.bounceInOut,
                                          height:
                                              SizeConfig.heightMultiplier * 0.5,
                                          width: selectedTab == index
                                              ? SizeConfig.widthMultiplier * 23
                                              : 0,
                                          color: AppColors.primarydarkColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                      ],
                    ),
                    Divider(
                      height: 0,
                      // color: Color(0xffEDEDED),
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    SizedBox(
                        height: SizeConfig.heightMultiplier * 150,
                        width: SizeConfig.widthMultiplier * 100,
                        child: tabWidgets[selectedTab])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
