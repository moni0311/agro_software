
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import 'Billwise_Sales_Report.dart';
import 'Customer Productwise Sales Report.dart';
import 'Customer_Summary.dart';
import 'Datewise_Sales_Report.dart';
import 'DeleteInvoice.dart';
import 'InvoiceCountReport.dart';
import 'Margin Report.dart';
import 'Productwise_Sales_Report.dart';
import 'SalesMan_Report.dart';
import 'Sales_TCS_Report.dart';
import 'Taxwise_Sales_Report.dart';

class SalesReportNavigation extends StatelessWidget {
  const SalesReportNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sales Report Details ",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Mybutton(
              iconData: Icons.receipt_rounded,
              Buttontext: 'Billwise Sales Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BillwiseSalesReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Customer Productwise Sales Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CustomerProductwiseSalesReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Sales Customer Summary',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SalesCustomerSummary()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Datewise Sales Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DatewiseSalesReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Delete Invoice',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Deleteinvoice()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Invoice Count Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Invoicecountreport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Margin Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MarginReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Productwise Sales Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductwiseSalesReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'Sales TCS Report ',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Sales_TCS_Report()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'SalesMan Report ',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SalesManReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.payments_rounded,
              Buttontext: 'TaxwiseSales Report ',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TaxwiseSalesReport()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
