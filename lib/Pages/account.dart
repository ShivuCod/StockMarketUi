import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account extends ConsumerWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 890),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              width(10),
              const Expanded(
                  child: Text(
                "Account",
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png"),
                      fit: BoxFit.fitWidth)),
            ),
            height(8),
            const Text(
              "Mr. sdj asd",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            height(4),
            const Text(
              "absc@gmail.com",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            height(15),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 60),
                    backgroundColor: buttoncolor),
                onPressed: () {},
                child: const Text(
                  " Edit Profile",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            height(20),
            
            Container(
             margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5,color: Colors.grey.shade200)
                ],
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View Balance",
                    style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    color: buttoncolor,
                    size: 15,
                  )
                ],
              ),
            ),
            Container(
           margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5,color: Colors.grey.shade200)
                ],
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    color: buttoncolor,
                    size: 15,
                  )
                ],
              ),
            ),
            Container(
             margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5,color: Colors.grey.shade200)
                ],
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LogOut",
                    style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    color: buttoncolor,
                    size: 15,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5,color: Colors.grey.shade200)
                ],
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Time Spend",
                    style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                  ),
                  Icon(
                    FontAwesomeIcons.angleRight,
                    color: buttoncolor,
                    size: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
