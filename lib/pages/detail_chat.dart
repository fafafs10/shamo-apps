import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_bubble.dart';

class DetailChat extends StatelessWidget {
  Widget title() {
    return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: blackColor,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                "assets/images/online_chat.png",
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shoe Store",
                    style: whiteTextStyle.copyWith(fontSize: 14),
                  ),
                  Text(
                    "Online",
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: black6Color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: purpleColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/boots.png",
              width: 54,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "COURT VISIO...",
                  style: whiteTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "\$57,15",
                  style: blueTextStyle,
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/close_button.png",
            width: 22,
          )
        ],
      ),
    );
  }

  Widget chatInputNav() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: black4Color,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Type Message",
                          hintStyle: darkGreyTextStyle),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 45,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    "assets/images/submit.png",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget chatBubble() {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        ChatBubble(
          text: "Hi, This item is still available?",
          isSender: true,
          hasProduct: true,
        ),
        ChatBubble(
          text: "Good night, This item is only available in size 42 and 43",
          isSender: false,
          hasProduct: false,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black3Color,
      appBar: title(),
      bottomNavigationBar: chatInputNav(),
      body: chatBubble(),
    );
  }
}
