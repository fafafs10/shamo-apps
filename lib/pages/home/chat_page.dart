import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  Widget title() {
    return AppBar(
      backgroundColor: blackColor,
      centerTitle: true,
      title: Text(
        "Message Support",
        style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: black3Color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty_chat.png",
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Opss no message yet?",
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "You have never done a transaction",
              style: greyTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: purpleColor,
                ),
                child: Text(
                  "Explore Store",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chat() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: black3Color,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [title(), chat()],
    );
  }
}
