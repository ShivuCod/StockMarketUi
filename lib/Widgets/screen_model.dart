import 'package:day3/Pages/account.dart';
import 'package:day3/Pages/history.dart';
import 'package:day3/Pages/home.dart';
import 'package:day3/Pages/trending.dart';
import 'package:day3/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// page index ex 0 for home
final currentPage = StateProvider((ref) => 0);

class ScreenModel extends ConsumerWidget {
  const ScreenModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(currentPage);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: IndexedStack(
        index: page ,
        children:  [
          Home(),
          History(),
          const Trending(),
          const Account(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 60,
        color: cardColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildActivLabel(
              iconData: FontAwesomeIcons.house,
              page: 0,
              label: "Home",
              currentPage: page ,
              onTap: () => ref.read(currentPage.notifier).state = 0,
            ),
            buildActivLabel(
              iconData: FontAwesomeIcons.chartPie,
              page: 1,
              label: "History",
              currentPage: page ,
              onTap: () => ref.read(currentPage.notifier).state = 1,
            ),
            buildActivLabel(
              iconData: FontAwesomeIcons.chartLine,
              page: 2,
              label: "Trending",
              currentPage: page ,
              onTap: () => ref.read(currentPage.notifier).state = 2,
            ),
            buildActivLabel(
              iconData: FontAwesomeIcons.user,
              page: 3,
              label: "Account",
              currentPage: page ,
              onTap: () => ref.read(currentPage.notifier).state = 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildActivLabel({
    required IconData iconData,
    required int page,
    required int currentPage,
    required String label,
    required void Function() onTap,
  }) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 20,
              color: page == currentPage ? buttoncolor : Colors.grey,
              ),
             
             if(page==currentPage) Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: page == currentPage ? buttoncolor : Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
             ),
            ],
          ),
        ),
      );
}
