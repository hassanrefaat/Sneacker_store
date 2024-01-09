import 'package:flutter/material.dart';

import 'my_cart_brand.dart';

class MyCartBrandDelete extends StatelessWidget {
  const MyCartBrandDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyCartBrand(
            image: 'assets/images/nike.png',
            brandName: 'Nike Club Max',
            brandCoast: '\$584.95'),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 58,
          height: 104,

          decoration: ShapeDecoration(
              color: Color(0xFFFF1900),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: IconButton(onPressed: () {  }, icon: Icon(Icons.delete_outlined,
            size: 30,),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
