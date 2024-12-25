
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import 'BulkTransactionContent.dart';
import 'SalesBottomContent.dart';
import 'WhatsappBottomContentView.dart';
import 'company/company_view.dart';

class SettingsMainpg extends StatelessWidget {
  const SettingsMainpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Settings ",
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
            Buttontext: 'Company',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompanyView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),

          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Sales Bottom Content',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Salesbottomcontent()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Whatsapp Bottom Content',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Whatsappbottomcontentview()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Bulk Transaction Stock',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Bulktransactioncontent()));
            },
          ),

          const SizedBox(
            height: 15,
          ),



        ],
      ),
    );
  }
}
