import 'package:e_comm_app/app/models/product.dart';
import 'package:e_comm_app/router/pages.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Center(
                  child: Image.asset(
                    product.image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    product.title,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Rs. ${product.price}",
                      style: const TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (index2) => Container(
                          width: 18,
                          height: 18,
                          margin: const EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                            color: product.colors[index2],
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // favorite icon
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  )),
              child: IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      onTap: () => Pages.productDetails.go(context),
    );
  }
}
