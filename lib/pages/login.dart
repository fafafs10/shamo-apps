import 'package:flutter/material.dart';
// import 'package:shamo/main.dart';
import 'package:shamo/theme.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Sign In to Countinue",
              style: darkGreyTextStyle,
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: black2Color, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/email.png",
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: whiteTextStyle,
                      decoration: InputDecoration.collapsed(
                          hintText: "Your Email Address",
                          hintStyle: darkGreyTextStyle),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: black2Color, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/password.png",
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: whiteTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                          hintText: "Your Password",
                          hintStyle: darkGreyTextStyle),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main-page');
          },
          style: TextButton.styleFrom(
              backgroundColor: purpleColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            "Login",
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: darkGreyTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                "Sign Up",
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blackColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            emailInput(),
            passwordInput(),
            loginButton(),
            Spacer(),
            footer()
          ],
        ),
      )),
    );
  }
}
