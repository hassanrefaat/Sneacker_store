import 'package:flutter/material.dart';

import 'best_seller.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  final List<String> bestSeller = [
    'assets/images/best1.png',
    'assets/images/sneakers2.png'
  ];
  final List<String> bestSellerText =
  [
    'Nike Jordan',
    'Air Max',
  ];
  final List <String> bestSellerCoast=[
    '\$302.00',
    '\$350.00'
  ];
  int activeIndex = 0;

  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: bestSeller.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: BestSeller(
                  image: bestSeller[index],
                  brandText: bestSellerText[index],
                  brandCoast: bestSellerCoast[index],

                ),
              ),
            );
          }),
    );

  }
}
