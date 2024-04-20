
import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:day3/Widgets/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class History extends ConsumerWidget {
  History({super.key});



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
                    "History",
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
        child: Container(
          color: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
             
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 0.2)
                    ],
                    color: cardColor),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invested".toUpperCase(),
                            style:
                                const TextStyle(color: buttoncolor, fontSize: 12),
                          ),
                          height(5),
                          const Text("₹ 25,343",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          height(5),
                          Text(
                            "₹ +4593.0".toUpperCase(),
                            style:
                                const TextStyle(color: buttoncolor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    width(15),
                    const Icon(FontAwesomeIcons.chartSimple,
                        color: buttoncolor, size: 40)
                  ],
                ),
              ),
              height(10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 0.2)
                    ],
                    color: cardColor),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Earning".toUpperCase(),
                            style:
                                const TextStyle(color: buttoncolor, fontSize: 12),
                          ),
                          height(5),
                          const Text("₹ 4593.0",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          height(5),
                          Text(
                            "₹ 25,343".toUpperCase(),
                            style:
                                const TextStyle(color: buttoncolor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    width(15),
                    const Icon(FontAwesomeIcons.chartSimple,
                        color: buttoncolor, size: 40)
                  ],
                ),
              ),
              height(10),
              const Text("Analysis",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              height(10),
              //Initialize the chart widget
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: buttoncolor.withOpacity(0.2),
                      spreadRadius: 0.1,
                      blurRadius: 10)
                ], borderRadius: BorderRadius.circular(20), color: cardColor),
                height: MediaQuery.of(context).size.height * 0.3,
                //Initialize the spark charts widget
                child:  Graph()
              ),
              height(10),
      
              const Text(
                "Trasctions",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              height(10),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration( boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              image:  DecorationImage(
                                onError: (exception, stackTrace) {
                                  
                                },
                                  image:const NetworkImage(
                                      "https://purepng.com/public/uploads/large/amazon-logo-s3f.png"),
                                  fit: BoxFit.cover)),
                        ),
                        width(12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Amazon",
                                style:
                                     TextStyle( fontSize: 16),
                              ),
                              height(3),
                              Text(
                                "4 hours ago".toUpperCase(),
                                style:
                                    const TextStyle(color: buttoncolor, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        width(15),
                        Column(
                          children: [
                            const Text(
                              " + 400",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                            height(5),
                            Text(
                              "Invested".toUpperCase(),
                              style:
                                  const TextStyle(color: buttoncolor, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                height(8),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration( boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 10,
                                    spreadRadius: 0.3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              image:  DecorationImage(
                                onError: (exception, stackTrace) {
                                  
                                },
                                  image: const NetworkImage(
                                      "https://purepng.com/public/uploads/large/amazon-logo-s3f.png"),
                                  fit: BoxFit.cover)),
                        ),
                        width(12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Amazon",
                                style:
                                     TextStyle( fontSize: 16),
                              ),
                              height(3),
                              Text(
                                "4 hours ago".toUpperCase(),
                                style:
                                    const TextStyle(color: buttoncolor, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        width(15),
                        Column(
                          children: [
                            const Text(
                              " + 400",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                            height(5),
                            Text(
                              "Invested".toUpperCase(),
                              style:
                                  const TextStyle(color: buttoncolor, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]),
        ),
      ),
    );
  }
}
