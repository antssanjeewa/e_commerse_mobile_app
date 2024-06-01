import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.2),
            padding: const EdgeInsets.all(15),
          ),
          icon: const Icon(Icons.grid_view_outlined),
          onPressed: () {},
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.2),
            padding: const EdgeInsets.all(15),
          ),
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
