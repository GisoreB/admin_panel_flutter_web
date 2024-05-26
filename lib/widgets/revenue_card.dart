import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/bar_chart.dart';

class TotalRevenueCard extends StatelessWidget {
  const TotalRevenueCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: context.height * 0.375,
      width: context.width * 0.5,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Total Revenue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: AppColors.orange,
                  radius: 7,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Profit',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  backgroundColor: AppColors.lightBlue,
                  radius: 7,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Loss',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Text(
                    'UGX50.4M',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: AppColors.green,
                    size: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '5% than last month',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            MyColumnChart(),
          ],
        ),
      ),
    );
  }
}