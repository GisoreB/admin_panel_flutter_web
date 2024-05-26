// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';

class BlueInputField extends StatelessWidget {
  final String hintText;
  final double wf;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final int maxLines;
  const BlueInputField({
    Key? key,
    required this.hintText,
    required this.wf,
    this.suffixWidget,
    this.prefixWidget,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: context.width * wf,
      child: TextField(
        maxLines: maxLines,
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
            prefixIcon: prefixWidget,
            filled: true,
            fillColor: AppColors.lightBlue.withOpacity(0.4),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 16,
              color: AppColors.grey.withOpacity(0.8),
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            suffixIcon: suffixWidget),
      ),
    );
  }
}