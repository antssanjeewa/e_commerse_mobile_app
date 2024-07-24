import 'package:e_comm_app/app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categoriesList[index];
          return Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(category.image),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 10),
              Text(category.title)
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: categoriesList.length,
      ),
    );
  }
}
