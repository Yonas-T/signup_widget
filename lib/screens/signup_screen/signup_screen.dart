import 'package:flutter/material.dart';
import 'package:login_test/constants/colors.dart';
import 'package:login_test/screens/signup_screen/widgets/toggle_widget.dart';

import '../../common_widgets/app_bar_widget.dart';
import '../../constants/font_size.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarWidget(
          colorVal: kWhite,
          leadingWidth: 16,
          leadingIcon: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kBlack,
                  size: 17,
                )),
          ),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),
            Image.asset('assets/images/logo.png', width: 84, height: 84),
            const SizedBox(
              height: 16,
            ),
            const ToggleWidget(),
            const SizedBox(
              height: 12,
            ),
            const SignupForm(),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: kButtonHeight,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kDarkGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.5))),
                child: const Text("Sign Up",
                    style:
                        TextStyle(fontSize: kNormalMediumFont, color: kWhite)),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * .35,
                    color: kDarkGrey),
                const Text(
                  'Or',
                  style: TextStyle(fontSize: kNormalFont, color: kDarkGrey),
                ),
                Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * .4,
                    color: kDarkGrey)
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: kButtonBorder,
                    width: 1,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: kButtonHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Google.png',
                      height: 20,
                      width: 20,
                    ),
                    const Text(
                      'Sign up with Google',
                      style: TextStyle(
                        fontSize: kMediumButtonFont,
                        color: kBlack,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                )),
            const SizedBox(
              height: 9,
            ),
            Container(
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(3),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: kButtonHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Apple.png',
                      height: 20,
                      width: 20,
                    ),
                    const Text(
                      'Sign up with Apple',
                      style: TextStyle(
                        fontSize: kMediumButtonFont,
                        color: kWhite,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
