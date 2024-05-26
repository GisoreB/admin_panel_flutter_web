// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChart extends StatelessWidget {
  CircularChart({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData('52%', 57, AppColors.orange),
    ChartData('48%', 43, AppColors.lightBlue),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.33,
      width: context.height * 0.33,
      child: SfCircularChart(series: <CircularSeries>[
        // Render pie chart
        PieSeries<ChartData, String>(
          dataSource: chartData,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelMapper: (ChartData data, _) => data.x,
          dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              textStyle: TextStyle(color: AppColors.black, fontSize: 18),
              useSeriesColor: true),
        )
      ]),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}