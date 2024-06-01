import 'package:e_comm_app/app/screen/home/widgets/title_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/banners.dart';
import 'widgets/category_list.dart';
import 'widgets/search_field.dart';
import 'widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ///
                const TopBar(),
                //
                const SizedBox(height: 20),
                const SearchField(),

                ///
                const SizedBox(height: 20),
                const Banners(),

                //
                const SizedBox(height: 25),
                CategoryList(),

                //
                // SizedBox(height: 10),
                const TitleBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
