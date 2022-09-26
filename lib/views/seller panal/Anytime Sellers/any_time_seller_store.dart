import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/Anytime%20Sellers/components/services_tab.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Curated Store Seller/components/edit_clothes_widget.dart';
import 'components/gallery_tab.dart';
import 'components/products_tab.dart';

class AnyTimeSellerStoreDetail extends StatefulWidget {
  const AnyTimeSellerStoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<AnyTimeSellerStoreDetail> createState() =>
      _AnyTimeSellerStoreDetailState();
}

class _AnyTimeSellerStoreDetailState extends State<AnyTimeSellerStoreDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<String> tags = ["EDIT", "CLOTHES"];
  List<String> tabs = ["Gallery", "Services", "Products"];
  int selectedTab = 0;
  List<Widget> tabWidgets = [
    const GalleryTab(),
    const ServicesTab(),
    ProductsTab()
  ];
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
              decoration: BoxDecoration(
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
                          EditClothesWidget(tags: tags),
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
                                color: const Color(0xff7E7C7C),
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.primarylightColor
                                        .withOpacity(.3),
                                    borderRadius: BorderRadius.circular(100)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 3,
                                    vertical: SizeConfig.heightMultiplier * .6),
                                margin: EdgeInsets.only(
                                    right: SizeConfig.widthMultiplier * 0.6),
                                child: TextView(
                                  text: 'At Home',
                                  fontWeight: FontWeight.w500,
                                  size: SizeConfig.textMultiplier * 1.2,
                                  color: AppColors.primarydarkColor,
                                ),
                              )
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
                          SizedBox(height: SizeConfig.heightMultiplier * 2),
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
                                          duration:
                                              const Duration(milliseconds: 300),
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
                    const Divider(
                      height: 0,
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
