import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafik extends StatefulWidget {
  @override
  _GrafikState createState() => _GrafikState();
}

class _GrafikState extends State<Grafik> {
  late List<SalesData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SfCartesianChart(
            title: ChartTitle(text: 'Analisis Pembelajaran'),
            legend: Legend(isVisible: true),
            series: <ChartSeries>[
              LineSeries<SalesData, double>(
                  name: 'IPK',
                  dataSource: _chartData,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales),
            ],
            borderColor: Colors.black));
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(1, 3.3),
      SalesData(2, 3.1),
      SalesData(3, 3.2),
      SalesData(4, 3.3),
      SalesData(5, 3.6),
      SalesData(6, 0),
      SalesData(7, 0),
      SalesData(8, 0),
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
