import 'package:dpad_container/dpad_container.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/image_card.dart';

class HomeScreen extends StatefulWidget {
  static String route = '$HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;
  int? onFocusIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
        ),
        primary: false,
        padding: const EdgeInsets.all(20),
        itemCount: images.length,
        itemBuilder: (ctx, i) {
          final image = images[i];
          return DpadContainer(
            onClick: () => setState(() => selectedIndex = i),
            onFocus: (bool isFocused) => setState(() => onFocusIndex = i),
            child: ImageCard(
              image: image,
              focus: onFocusIndex == i,
              selected: selectedIndex == i,
            ),
          );
        },
      ),
    );
  }
}
