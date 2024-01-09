import 'package:flutter/material.dart';
import '../utils/styles.dart';
import '../widgets/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar:AppBar(
        backgroundColor: Color(0xFFF6F6F8),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.delete_outline)),
          )
        ],
        title: Center(
          child: Text('Notifications',
          style: Styles.style18,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0,
            left: 20
            ),
            child: Text('Recent',
            style: Styles.style14black,
            ),
          ),
          NotificationBody(
            image: 'assets/images/notification1.png',
            brandName: 'We Have New Products With Offers',
            brandOldCoast: '\$364.95',
            brandCoast: '\$260.00',
            time: '7 min ago',
          ),
          NotificationBody(
            image: 'assets/images/notification2.png',
            brandName: 'We Have New Products With Offers',
            brandOldCoast: '\$364.95',
            brandCoast: '\$260.00',
            time: '7 min ago',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Yesterday',
            style: Styles.style18,
            ),
          ),
          NotificationBody(
            image: 'assets/images/notification3.png',
            brandName: 'We Have New Products With Offers',
            brandOldCoast: '\$364.95',
            brandCoast: '\$260.00',
            time: '7 min ago',
          ),
          NotificationBody(
            image: 'assets/images/notification4.png',
            brandName: 'We Have New Products With Offers',
            brandOldCoast: '\$364.95',
            brandCoast: '\$260.00',
            time: '7 min ago',
          ),
        ],
      ),
    );
  }
}

