import 'package:flutter/material.dart';
import '../main_lay_out/main_lay_out.dart';
import '../utils/styles.dart';
import '../widgets/card_information.dart';
import '../widgets/def_button.dart';
import '../widgets/my_dashed_line.dart';
import '../widgets/nav.dart';
import '../widgets/total_coast.dart';

class MyCartInformation extends StatelessWidget {
  const MyCartInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F8),
        title: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Text(
            'My Cart',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 370,
              height: 745,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Information',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardInformation(
                    icon: Icons.email_outlined,
                    info: 'emmanueloyiboke@gmail.com',
                    infoName: 'Email',
                  ),
                  CardInformation(
                    icon: Icons.phone_outlined,
                    info: '+234-811-732-5298',
                    infoName: 'Phone',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    '1082 Airport Road, Nigeria',
                    style: Styles.style12,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 295,
                      height: 101,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.33000001311302185),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    'Payment Method',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/paypal.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DbL Card',
                            style: Styles.style14black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '******0696 4629',
                            style: Styles.style14gray,
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  TotalCoast(
                    text: 'Subtotal',
                    coast: '\$753.95',
                  ),
                  TotalCoast(text: 'Delivery', coast: '\$60.20'),
                  CustomDashedLine(),
                  SizedBox(
                    height: 25,
                  ),
                  FinalTotalCoast(
                    text: 'Total Coast',
                    coast: '\$814.15',
                  ),
                  defaultButton(
                      function: () {
                        ShowBackToShop(context);
                      },
                      text: 'Checkout')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ShowBackToShop(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 335,
          height: 375,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Container(
            color: Colors.white,
            child: AlertDialog(
              icon: Image.asset('assets/images/cel.png'),

              title: Text(
                'Your Payment Is \n Successful',
                style: Styles.style20black,
               // textAlign: TextAlign.center,
              ),
              actions: [
                Center(
                  child: Container(
                    width: 199,
                    height: 51,

                    decoration: ShapeDecoration(
                      color: Color(0xFF0D6EFD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: MaterialButton(
                    //  color: Colors.blue,
                      onPressed: () {
                        navigateTo(context, MainLayout()); // Close the dialog
                      },
                      child: Text('Back To Shopping'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
