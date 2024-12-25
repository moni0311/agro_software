
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import 'Balance_sheet.dart';
import 'Profit_Loss.dart';
import 'TrialSheet.dart';

class GlReportNavigation extends StatelessWidget {
  const GlReportNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "GL Details ",
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
            Buttontext: 'Balance Sheet',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Balance_sheet()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: ' Profit/Loss',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profit_Loss()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Trial_Sheet',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Trialsheet()));
            },
          ),
        ],
      ),
    );
  }
}
