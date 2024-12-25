import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import 'CustomerReport/Customer_ReportNavigation.dart';
import 'GL_Report/GL_Report_Navigation.dart';
import 'Gst_Report/Gst_report_Screen.dart';
import 'Ledger/Ledger_Navigation_Report.dart';
import 'Purchase_Reports/Purchase_Report_Navigation.dart';
import 'Return_Report/Return_Report_Navigation.dart';
import 'Sales_Report/Sales_Report_Navigattion.dart';
import 'Stock_Report/Stock_Report_Navigation.dart';
import 'Supplier/Supplier_Report_Navigation.dart';
import 'TransactionReport/ReportTypes.dart';


class ReportTypes extends StatelessWidget {
  const ReportTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Total Reports',
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
            const SizedBox(
              height: 15,
            ),

            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Customer Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const CustomerReportnavigation()));
              },
            ),

            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GL_Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const GlReportNavigation()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'GST Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GstReportScreen()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Ledger Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LedgerNavigationReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Purchase Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PurchaseReportNavigation()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Return Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReturnReportNavigation()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Stack Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StackReportNavigation()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Supplier Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SupplierReportNavigation()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Transaction Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Sales Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SalesReportNavigation()));
              },
            ),

          ],
        ),
      ),
    );
  }
}
