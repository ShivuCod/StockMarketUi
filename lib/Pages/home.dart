import 'package:day3/Models/sales_model.dart';
import 'package:day3/Widgets/branch.dart';
import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable
class Home extends ConsumerWidget {
  Home({super.key});

  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(double.infinity,90),child:   Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
        child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  width(10),
                  const Expanded(
                      child: Text(
                    "Home",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  )),
                  width(10),
                  const Icon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: Colors.black,
                  ),
                ],
              ),
      ),
           ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const Text("Hi, Anna Welcome",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
            height(6),
              Container(
                
                decoration: BoxDecoration(color: cardColor,boxShadow: [
                  BoxShadow(
                      color: buttoncolor.withOpacity(0.2),
                      spreadRadius: 0.1,
                      blurRadius: 5)
                ], borderRadius: BorderRadius.circular(20)),
                height: 200,
                child: SfCartesianChart(
                    backgroundColor: Colors.transparent,
                    primaryXAxis: const CategoryAxis(),
                    // Chart title
                    title: const ChartTitle(text: 'Half yearly sales analysis'),
                    // Enable legend
                    legend: const Legend(isVisible: true),
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <CartesianSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          dataSource: data,
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,
                          name: 'Sales',
                          // Enable data label
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true))
                    ]),
              ),
              height(15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                            color: cardColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 10,
                                  spreadRadius: 0.3)
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            const CircleAvatar(
                                minRadius: 30,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                    "https://i2.wp.com/bradan.co/wp-content/uploads/2017/05/digital-marketing-icon-e1457452716961.png?ssl=1")),
                            height(6),
                            const Text(
                              "Spend Money",
                              style: TextStyle(fontSize: 14),
                            ),
                            const Text(
                              "This is just for just",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        )),
                  ),
                  width(10),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              color: cardColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.2)
                              ],
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                  minRadius: 20,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                      "https://cdn0.iconfinder.com/data/icons/business-and-finance-32/244/icon-285-1024.png")),
                              width(6),
                              const Text(
                                "Earing",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )),
                      height(5),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              color: cardColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.2)
                              ],
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                  minRadius: 20,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.Qbkz8I1xFLu0q14Uc1lujgHaHa?rs=1&pid=ImgDetMain")),
                              width(6),
                              const Text(
                                "Trending",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )),
                    ],
                  ))
                ],
              ),
              height(20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: buttoncolor.withOpacity(0.3)),
                child: const Text(
                  "By sending a message, you agree to our Terms. Read our Privacy Policy. Don't share sensitive info. Chats may be reviewed and used to train our models. Learn about your choices.",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              height(5),
              const Text(
                "Branchs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              height(5),
              AnimatedGridView()
            ],
          ),
        ),
      ),
    );
  }
}
