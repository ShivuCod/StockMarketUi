import 'package:day3/Models/sales_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

// ignore: must_be_immutable
class Graph extends ConsumerWidget {
   Graph({super.key});
  List<SalesData> data = [
    SalesData('Jan', 1200),
    SalesData('Feb', 2009),
    SalesData('Feb', 1999),
    SalesData('Feb', 2999),
    SalesData('Mar', 1500),
    SalesData('Apr', 3500),
    SalesData('May', 1890),
    SalesData('May', 4300),
    SalesData('May', 4593),
  ];
  @override
  Widget build(BuildContext context,WidgetRef) {
    return SfSparkLineChart.custom(
                axisLineColor: Colors.green,
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                labelStyle: TextStyle(fontSize: 10),
                dataCount: 5,
              );
  }
}