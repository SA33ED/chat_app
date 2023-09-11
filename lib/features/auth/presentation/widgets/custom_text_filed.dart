
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.label,
    this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
    this.readOnly,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.controller,
  });

  final bool? obscureText;
  final bool? readOnly;
  final String? hint;
  final Widget? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
              fillColor: const Color(0xffF7F7F7),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.gray),
                  borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.gray,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: hint,
              label: label,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon),
          keyboardType: textInputType,
          onChanged: onChanged,
          onFieldSubmitted: onSubmitted,
          obscureText: obscureText ?? false,
          readOnly: readOnly ?? false,
        )
      ],
    );
  }
}
