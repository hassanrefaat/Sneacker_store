import 'package:flutter/material.dart';
import 'package:sneaker_store/widgets/total_coast.dart';
import '../views/my_cart_information.dart';
import 'def_button.dart';
import 'my_dashed_line.dart';
import 'nav.dart';

class MYCartTotalPrice extends StatelessWidget {
  const MYCartTotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 36,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            TotalCoast(
              text: 'Subtotal',
              coast: '\$753.95',
            ),
            TotalCoast(text: 'Delivery',
                coast: '\$60.20'),
            CustomDashedLine(),
            SizedBox(
              height: 25,
            ),
            FinalTotalCoast(text: 'Total Coast', coast: '\$814.15',

            ),
            defaultButton(function: (){
              navigateTo(context, MyCartInformation());
            },
                text: 'Checkout')

          ],
        ),
      ),
    );
  }
}
