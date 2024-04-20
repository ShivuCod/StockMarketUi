import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:day3/Widgets/stockCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final stockList = Provider<List>((ref) => [
      {
        "name": "Infosys",
        "sharePrice": "2305.00",
        "highPrice": "3305.00",
        "avgPrice": "125.00",
        "avbShare": "60",
      },
      {"name": "TATA", "sharePrice": "90", "avbShare": "2"},
      {
        "name": "Infosys",
        "sharePrice": "405.00",
        "highPrice": "1305.00",
        "avgPrice": "125.00",
        "avbShare": "60",
      },
      {"name": "TATA", "sharePrice": "90", "avbShare": "2"},
      {
        "name": "Mahindra",
        "sharePrice": "1265.00",
        "highPrice": "3305.00",
        "avgPrice": "125.00",
        "avbShare": "10",
      },
      {"name": "Maruti", "sharePrice": "24", "avbShare": "2"},
      {
        "name": "Infosys",
        "sharePrice": "3905.00",
        "highPrice": "3305.00",
        "avgPrice": "125.00",
        "avbShare": "60",
      },
      {
        "name": "TATA",
        "sharePrice": "90",
        "highPrice": "505.00",
        "avbShare": "2",
        "avgPrice": "125.00",
      },
    ]);

class Trending extends ConsumerWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stock = ref.watch(stockList);
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(double.infinity, 100),child: Padding(
        padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
        child: Column(children: [
           Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                width(10),
                const Expanded(
                    child: Text(
                  "Stock Details",
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
            height(15),
            SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  const Text(
                    "All",
                    style: TextStyle(
                        color: buttoncolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  width(24),
                  const Text(
                    "Latest",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  width(24),
                  const Text(
                    "Highest",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  width(24),
                  const Text(
                    "Invested",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  width(24),
                  const Text(
                    "Recent",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ])),
            
        ],),
      ),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
             width(24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    stock.length, (index) => StockCard(stock: stock[index])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
