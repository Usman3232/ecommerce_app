import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 3.9),
                child: InkWell(
                    onTap: () {}, child: SvgPicture.asset(AppIcons.back)),
              ),
              Flexible(
                  child: AuthTextInputField(
                      hintText: "What are you looking for?")),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 3.9),
                child: InkWell(
                    onTap: () {}, child: SvgPicture.asset(AppIcons.search)),
              )
            ],
          )
        ],
      ),
    );
  }
}
