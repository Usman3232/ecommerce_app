import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class DeliveryCardDetails extends StatelessWidget {
  const DeliveryCardDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.widthMultiplier * 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: const Color(0xff7496C2).withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Delivery Rider’s Details",
              style: TextStyle(
                color: const Color(0xff7496C2),
                fontSize: SizeConfig.textMultiplier * 1.95,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Joshua Gillani\n+91 888 888 8888",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 1.85,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Delivery Address",
              style: TextStyle(
                color: const Color(0xff7496C2),
                fontSize: SizeConfig.textMultiplier * 1.95,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 1.85,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Ch Hassaan Saleem, +91 888 888 8888",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.textMultiplier * 1.85,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
