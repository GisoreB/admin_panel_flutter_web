// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';

class TileWidget extends StatefulWidget {
  final String title;
  final String value;
  final bool hasIcon;
  bool isSelected;
  final double h;
  final double w;
  TileWidget({
    super.key,
    required this.title,
    required this.value,
    required this.h,
    required this.w,
    this.isSelected = false,
    this.hasIcon = false,
  });

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        height: context.height * widget.h,
        width: context.width * widget.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
              color: widget.isSelected ? AppColors.orange : AppColors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: widget.isSelected ? AppColors.orange : AppColors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.value,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color:
                    widget.isSelected ? AppColors.orange : AppColors.grey,
                  ),
                ),
                widget.hasIcon
                    ? const Icon(
                  Icons.arrow_upward,
                  size: 35,
                  color: AppColors.green,
                )
                    : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}