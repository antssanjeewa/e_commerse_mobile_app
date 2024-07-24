import 'package:flutter/material.dart';

import 'widgets/banners.dart';
import 'widgets/category_list.dart';
import 'widgets/product_list.dart';
import 'widgets/search_field.dart';
import 'widgets/title_bar.dart';
import 'widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                ///
                TopBar(),
                //
                SizedBox(height: 20),
                SearchField(),

                ///
                SizedBox(height: 20),
                Banners(),

                //
                SizedBox(height: 25),
                CategoryList(),

                //
                TitleBar(),

                //item list
                SizedBox(height: 15),
                ProductList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
