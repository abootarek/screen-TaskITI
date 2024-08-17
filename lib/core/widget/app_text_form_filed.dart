// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final InputBorder? focuseBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hinttext;
  final String? labletext;
  // final Function(String)? validatore;
  final String? Function(String?)? validator;

  final bool? isObscureText;
  final EdgeInsetsGeometry? contentpadding;
  final TextInputType? keyboardType;
  final Widget? suffixicon;
  final Widget? prefixeicon;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.focuseBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hinttext,
    this.labletext,
    this.validator,
    this.isObscureText,
    this.contentpadding,
    this.keyboardType,
    this.suffixicon,
    this.prefixeicon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      obscureText: isObscureText ?? false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        prefixIcon: prefixeicon,
        fillColor: fillColor ?? Colors.white,
        filled: true,
        contentPadding: contentpadding ??
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 17,
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        isDense: true,
        labelText: labletext,
        labelStyle: inputTextStyle ??
            const TextStyle(
              fontSize: 14,
            ),
        hintText: hinttext,
        hintStyle: hintStyle ??
            const TextStyle(
              fontSize: 14,
            ),
      ),
    );
  }
}
