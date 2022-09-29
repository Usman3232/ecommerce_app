import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/bottom%20sheets/store_filter.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class StoreSearch extends StatefulWidget {
  const StoreSearch({Key? key}) : super(key: key);

  @override
  State<StoreSearch> createState() => _StoreSearchState();
}

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
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.iconColor,
                    size: SizeConfig.imageSizeMultiplier * 6,
                  )),
              Flexible(
                  child:
                      AuthTextInputField(hintText: "Search a curated store")),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 3.9),
                child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (_) => StoreFilter());
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
