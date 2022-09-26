import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/models/homemodels/serviceprovidermodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/serviceprovidercard.dart';
import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceProviderSection extends StatelessWidget {
  const ServiceProviderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeights.height224,
      child: ListView.builder(
        itemCount: homeserviceprovider_model.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 4.55),
            child: ServiceProviderCard(
              image: homeserviceprovider_model[index].image,
              title: homeserviceprovider_model[index].title,
              reviews: homeserviceprovider_model[index].reviews,
              rating: homeserviceprovider_model[index].rating,
              favourite: homeserviceprovider_model[index].favourite,
              onpressed: () {
                Get.to(Stores(title: "AnyTime Seller", isstore: "isanytime"));
              },
            ),
          );
        },
      ),
    );
  }
}
