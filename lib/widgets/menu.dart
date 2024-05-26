// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';

class MenuWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool isSelected;
  VoidCallback onPressed;
  MenuWidget({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color:
        isSelected ? AppColors.white.withOpacity(0.1) : Colors.transparent,
        height: 70,
        width: context.width * 0.125,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isSelected
                ? const Liner()
                : const SizedBox(
              width: 5,
            ),
            const SizedBox(width: 25),
            Image.asset(
              iconPath,
              width: 20,
              height: 20,
              color: isSelected ? AppColors.orange : null,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: isSelected ? AppColors.lightBlue : AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Liner extends StatelessWidget {
  const Liner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 5,
      color: AppColors.orange,
    );
  }
}