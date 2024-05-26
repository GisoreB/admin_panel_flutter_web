import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.orange,
          width: 1.5,
        ),
      ),
      height: 43,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        children: [
          const SizedBox(
            width: 230,
            child: TextField(
              cursorColor: AppColors.orange,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 10),
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Image.asset(
            'assets/search.png',
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}