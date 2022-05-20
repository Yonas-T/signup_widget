import 'package:flutter/material.dart';
import 'package:login_test/constants/colors.dart';

import '../constants/font_size.dart';

class TextFieldUtils {
  TextFormField getCustomEditTextArea({
    String labelValue = "",
    String hintValue = "911 01 01 00",
    String? Function(String?)? validator,
    Function? onObsecurePressed,
    IconData? icon,
    bool? validation,
    IconButton? suffixIcon,
    TextEditingController? controller,
    TextInputType keyboardType = TextInputType.text,
    String? validationErrorMsg,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: kDarkGrey),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        filled: true,
        suffixIcon: suffixIcon,
        labelText: labelValue,
        labelStyle: const TextStyle(color: kDarkGrey, fontSize: kNormalFont),
        fillColor: kWhite.withOpacity(0.4),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: kDarkGrey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: kDarkGrey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: kDarkGrey)),
        hintText: hintValue,
        hintStyle: const TextStyle(color: kGreyText, fontSize: kNormalFont),
      ),
      validator: validator,
    );
  }
}
