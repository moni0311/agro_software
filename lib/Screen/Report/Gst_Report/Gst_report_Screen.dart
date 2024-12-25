
import 'package:agroo_software1/Screen/Report/Gst_Report/purchase-billwise.dart';
import 'package:agroo_software1/Screen/Report/Gst_Report/purchase_report_HSN.dart';
import 'package:agroo_software1/Screen/Report/Gst_Report/purchase_report_datewise.dart';
import 'package:agroo_software1/Screen/Report/Gst_Report/purchase_report_taxwise.dart';
import 'package:agroo_software1/Screen/Report/Gst_Report/purschase_report.dart';
import 'package:agroo_software1/Screen/Report/Gst_Report/sales_tcs_report.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import 'GSTR_1.dart';
import 'GSTR_2.dart';
import 'GSTR_3.dart';
import 'GSTR_3B.dart';
import 'GstSalesReport_page.dart';
import 'HSN_wise.dart';
import 'Taxwise.dart';
import 'datewise.dart';

class GstReportScreen extends StatelessWidget {
  const GstReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'GST Report',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'DateWise Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dateWisePage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GSTR_1',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GSTR_1page()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GSTR_2',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GSTR_2page()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GSTR_3',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GSTR_3page()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GSTR_3B',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Gstr3bPage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GST Sales Report Page',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GstsalesreportPage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'HSN Wise Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HsnWisePage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purchase Datewise Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const PurchaseReportDatewisepage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purchase_Report_HSN',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const purchase_report_HSN_page()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purchase Report Taxwise',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const PurchaseReportTaxwisepage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purchase_Billwise Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const purchase_billwisepage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purschase Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PurschaseReportpage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Sales TCS Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const salesTCsreportPage()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Taxwise Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const taxwisepage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
