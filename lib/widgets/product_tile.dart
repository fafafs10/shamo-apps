import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/boots.png",
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Football",
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Predator 20.3 Firm Ground Good Job",
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "\$68,47",
                  style: blueTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
