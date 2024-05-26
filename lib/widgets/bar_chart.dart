import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyColumnChart extends StatelessWidget {
  const MyColumnChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: const CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
        // minorGridLines: MinorGridLines(width: 0),
        axisLine: AxisLine(width: 0),
        majorTickLines: MajorTickLines(size: 0),
      ),
      primaryYAxis: const NumericAxis(
        majorGridLines: MajorGridLines(width: 0),
        minorGridLines: MinorGridLines(width: 0),
        majorTickLines: MajorTickLines(size: 0),
        minimum: 0,
        maximum: 100000,
        interval: 20000,
        labelFormat: '{value}k',
        axisLine: AxisLine(width: 0),
      ),
      series: (<ChartSeries>[
        ColumnSeries<ChartData, String>(
          name: 'Profit',
          spacing: 0.2,
          borderRadius: BorderRadius.circular(4),
          dataSource: <ChartData>[
            ChartData('Jan', 95000),
            ChartData('Feb', 80000),
            ChartData('Mar', 70000),
            ChartData('Apr', 60000),
            ChartData('May', 75000),
            ChartData('Jun', 65000),
          ],
          color: AppColors.orange,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        ),
        ColumnSeries<ChartData, String>(
          name: 'Loss',
          spacing: 0.2,
          borderRadius: BorderRadius.circular(4),
          dataSource: <ChartData>[
            ChartData('Jan', 75000),
            ChartData('Feb', 60000),
            ChartData('Mar', 45000),
            ChartData('Apr', 35000),
            ChartData('May', 55000),
            ChartData('Jun', 40000),
          ],
          color: AppColors.lightBlue,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        ),
      ]) as List<CartesianSeries<dynamic, dynamic>>,
    );
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}