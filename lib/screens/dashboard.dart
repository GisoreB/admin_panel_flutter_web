import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/expense_card.dart';
import 'package:admin_panel_flutter_web/widgets/four_tiles.dart';
import 'package:admin_panel_flutter_web/widgets/latest_orders.dart';
import 'package:admin_panel_flutter_web/widgets/progressor.dart';
import 'package:admin_panel_flutter_web/widgets/revenue_card.dart';
import 'package:admin_panel_flutter_web/widgets/topbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.875,
      color: AppColors.white,
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(
              title: 'Overview',
            ),
            Column(
              children: [
                const Row(
                  children: [
                    FourTiles(),
                    Expanded(child: ExpensesCard())
                  ],
                ),
                const Row(
                  children: [
                    TotalRevenueCard(),
                    Expanded(child: Progressor())
                  ],
                ),
                LatestOrders(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}