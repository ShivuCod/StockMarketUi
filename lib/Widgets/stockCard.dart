import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:day3/Widgets/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockCard extends ConsumerWidget {
  const StockCard({super.key, required this.stock});
  // ignore: prefer_typing_uninitialized_variables
  final stock;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    stock["name"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )),
                  width(8),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(FontAwesomeIcons.bell, size: 12),
                  ),
                  width(8),
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Icon(FontAwesomeIcons.bookmark, size: 12)),
                  width(8),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(FontAwesomeIcons.ellipsisVertical, size: 12),
                  ),
                ],
              ),
              Text(stock["name"]),
              Text(
                "₹ ${stock["sharePrice"]}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
              height(5),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "₹ + ${stock["highRate"]}",
                      style: const TextStyle(
                          color: buttoncolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: Colors.grey, width: 0.3),
                              borderRadius: BorderRadius.circular(12)),
                          minimumSize: const Size(50, 35)),
                      onPressed: () {},
                      child: const Text(
                        "Consumer Goods",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
              height(10),
              Graph(),
              height(10),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade200)),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${stock["avbShare"]} Share",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                            "₹ ${(double.parse(stock["avbShare"]) * double.parse(stock["sharePrice"])).toString()} Share",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    height(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Avg price ",
                              style:
                                  const TextStyle(fontSize: 10, color: Colors.grey),
                              children: [
                                TextSpan(
                                    text: "₹ ${stock["avgPrice"]}",
                                    style: const TextStyle(color: buttoncolor))
                              ]),
                        ),
                        Text(
                          "₹ + ${stock["highPrice"]}",
                          style: const TextStyle(
                              color: buttoncolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    height(5),
                   const Divider(),
                    height(5),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.award,
                            color: Colors.orangeAccent, size: 15),
                        width(15),
                        const Text("+ 12 Bonus rewards")
                      ],
                    ),
                   ],
                ),
              ),
               height(5),
                    Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: const Text("Sell")),
                  ),
                  width(15),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttoncolor,
                            foregroundColor: cardColor,
                              minimumSize: const Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: const Text("Buy")))
                ],
              ),
                  
            ])),
        height(5),
        Divider(),
        height(5),
    
      ],
    );
  }
}
