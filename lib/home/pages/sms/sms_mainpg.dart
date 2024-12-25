
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import '../stock/to_single_conversion/to_single_conversion_view.dart';
import 'balance_reminder.dart';
import 'card_point_reminder.dart';

class SmsMainpg extends StatelessWidget {
  const SmsMainpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "SMS",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        // toolbarHeight: 40,
        // toolbarOpacity: 1,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(25),
        //       bottomLeft: Radius.circular(25)),
        // ),
        // elevation: 0.00,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Mybutton(
            iconData: Icons.receipt_rounded,
            Buttontext: 'Card Point Reminder',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CardPointReminder()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Balance Reminder',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BalanceReminder()));
            },
          ),
          const SizedBox(
            height: 15,
          ),

          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Festivel SMS ',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ToSingleConversionView()));
            },
          ),


        ],
      ),
    );
  }
}
