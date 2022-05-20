import 'package:flutter/material.dart';
import 'package:login_test/constants/colors.dart';
import 'package:login_test/constants/font_size.dart';
import 'package:login_test/utils/textFieldUtils.dart';
import 'package:login_test/utils/validation.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  bool _confirmVisible = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: SizedBox(
        height: height * 0.3,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: kSmallFont,
                  color: kGreyText,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFieldUtils().getCustomEditTextArea(
              hintValue: 'Enter Email',
              validationErrorMsg: 'Email is required',
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter Password',
                style: TextStyle(
                  fontSize: kSmallFont,
                  color: kGreyText,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFieldUtils().getCustomEditTextArea(
              hintValue: 'Enter Password',
              validationErrorMsg: 'Password is required',
              validation: true,
              suffixIcon: IconButton(
                icon: Icon(
                  _isVisible == true ? Icons.visibility : Icons.visibility_off,
                  color: kDarkGrey,
                ),
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: kSmallFont,
                  color: kGreyText,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFieldUtils().getCustomEditTextArea(
              hintValue: 'Confirm Password',
              validationErrorMsg: 'Confirmation required',
              validation: true,
              suffixIcon: IconButton(
                icon: Icon(
                  _confirmVisible == true
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: kDarkGrey,
                ),
                onPressed: () {
                  setState(() {
                    _confirmVisible = !_confirmVisible;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
