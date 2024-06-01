import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final categoryList = [
    'images/beauty.png',
    'images/all/jacket.png',
    'images/all/sweet.png',
    'images/all/miband.jpg',
    'images/jewelry.png',
    'images/beauty.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(categoryList[index]),
                      fit: BoxFit.cover,
                    )),
              ),
              Text("Cat 0$index")
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: 6,
      ),
    );
  }
}
