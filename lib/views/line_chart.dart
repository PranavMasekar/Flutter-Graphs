import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(2010, 35),
      SalesData(2011, 28),
      SalesData(2012, 34),
      SalesData(2013, 32),
      SalesData(2014, 40)
    ];

    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 450,
          padding: const EdgeInsets.all(30),
          child: SfCartesianChart(
            series: <ChartSeries>[
              // Renders line chart
              LineSeries<SalesData, int>(
                  dataSource: chartData,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales)
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
