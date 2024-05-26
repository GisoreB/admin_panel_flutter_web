// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:admin_panel_flutter_web/utils/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/chat.png',
            scale: 2.5,
          ),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            'assets/bell.png',
            scale: 2.5,
          ),
          const SizedBox(
            width: 40,
          ),
          Container(
            height: 35,
            width: 1.5,
            color: AppColors.grey,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Ogwang Solomon',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(
            radius: 26,
            backgroundColor: AppColors.grey,
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}