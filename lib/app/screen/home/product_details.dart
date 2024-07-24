import 'package:e_comm_app/app/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  Product product = products[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ),

              // images slider
              SizedBox(
                height: 250,
                width: double.infinity,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  allowImplicitScrolling: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    Image.asset(product.image),
                    Image.asset("images/all/miband.jpg"),
                  ],
                ),
              ),

              //title
              Text(
                product.title,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Rs. ${product.price}",
                    style: const TextStyle(fontSize: 25),
                  ),
                  Row(
                    children: List.generate(
                      product.colors.length,
                      (index2) => Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          color: product.colors[index2],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              // colors

              //tab bar
            ],
          ),
        ),
      ),
    );
  }
}
