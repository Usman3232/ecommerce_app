import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';
import '../../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';
class EditClothesWidget extends StatelessWidget {
  const EditClothesWidget({
    Key? key,
    required this.tags,
  }) : super(key: key);

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          ...List.generate(
              tags.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors
                          .primarylightColor
                          .withOpacity(.3),
                      borderRadius:
                      BorderRadius.circular(
                          100)),
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 3,
                      vertical: SizeConfig.heightMultiplier * .6),
                  margin: EdgeInsets.only(
                      right: SizeConfig.widthMultiplier * 2),
                  child: TextView(
                    text: tags[index],
                    fontWeight: FontWeight.w500,
                    size: SizeConfig.textMultiplier * 1.5,
                    color: AppColors.primarydarkColor,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
