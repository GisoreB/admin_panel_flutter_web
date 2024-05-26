import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/circular_chart.dart';
import 'package:admin_panel_flutter_web/widgets/rower.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.37,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(left: 20, right: 25),
      padding: const EdgeInsets.only(left: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text(
              'Income & Expenses',
              style: TextStyle(
                fontSize: 19,
                color: AppColors.grey,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircularChart(),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Rower(
                      title: 'Expenses',
                      color: AppColors.lightBlue,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Rower(
                      title: 'Income',
                      color: AppColors.orange,
                    ),
                  ],
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}