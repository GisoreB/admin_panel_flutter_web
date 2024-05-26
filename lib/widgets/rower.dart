import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';

class Rower extends StatelessWidget {
  final String title;
  final Color color;
  const Rower({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}