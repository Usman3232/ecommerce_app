import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class Tags_List extends StatelessWidget {
  const Tags_List({
    Key? key,
    required this.tags,
  }) : super(key: key);

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            tags.length,
            (index) => Container(
                  decoration: BoxDecoration(
                      color: AppColors.primarylightColor.withOpacity(.3),
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 3,
                      vertical: SizeConfig.heightMultiplier * .6),
                  margin:
                      EdgeInsets.only(right: SizeConfig.widthMultiplier * 2),
                  child: TextView(
                    text: tags[index],
                    fontWeight: FontWeight.w500,
                    size: SizeConfig.textMultiplier * 1.2,
                    color: AppColors.primarydarkColor,
                  ),
                ))
      ],
    );
  }
}
