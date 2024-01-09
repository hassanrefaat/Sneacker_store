import 'package:flutter/material.dart';

import '../utils/styles.dart';

class MyCartBrand extends StatelessWidget {
  const MyCartBrand({
    super.key,
    required this.image,
    required this.brandName,
    required this.brandCoast,
  });

  final String image;
  final String brandName;
  final String brandCoast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  267,
      height: 104,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        children: [
          Container(
            width: 87,
            height: 85,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  brandName,
                  style: Styles.style16,
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        brandCoast,
                        style: Styles.style14black,
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
