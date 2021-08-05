import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: white2Color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/boots.png",
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hiking",
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "COURT VISION 2.0",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semibold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "\$58,67",
                    style: blueTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
