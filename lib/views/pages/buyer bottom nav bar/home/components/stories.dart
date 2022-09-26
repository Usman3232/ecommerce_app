import 'package:ecommerce_app/models/homemodels/circlemodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/circlecard.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      child: ListView.builder(
        itemCount: homecircle_model.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.5),
            child: HomeCircleWidget(image: homecircle_model[index].image),
          );
        },
      ),
    );
  }
}
