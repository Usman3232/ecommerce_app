import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/height.dart';


import '../../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';

class DottedContainerWidget extends StatelessWidget {
  final String text;
  final bool icon;
  DottedContainerWidget({Key? key, required this.text, this.icon = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      radius: Radius.circular(20),
      color: AppColors.primarydarkColor,
      borderType: BorderType.RRect,
      dashPattern: const [3, 3],
      child: Container(
        width: SizeConfig.widthMultiplier * 50,
        decoration: BoxDecoration(
          color: AppColors.primarylightColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon
                ? Icon(
                    CupertinoIcons.add,
                    size: SizeConfig.imageSizeMultiplier * 15,
                    color: AppColors.primarylightColor,
                  )
                : Text(''),
            SizedBox(
              height: AppHeights.height8,
            ),
            TextView(
              text: text,
              size: SizeConfig.textMultiplier * 1.53,
              color: AppColors.primarylightColor,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}
