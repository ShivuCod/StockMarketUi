import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart'; // Assuming you have a file with color constants





class AnimatedGridView extends ConsumerWidget {
  const AnimatedGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return SizedBox(
      height: 300,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 4,
        itemBuilder: (_, i) => AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            color: cardColor, // Assuming cardColor is defined in colors.dart
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                spreadRadius: 0.2,
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  FontAwesomeIcons.buildingColumns,
                  size: 30,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Branch ${i + 1}",
                style: const TextStyle(fontSize: 14),
              ),
              const Text(
                "Saving all money in self branch choice.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
