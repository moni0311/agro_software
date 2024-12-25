
import 'package:agroo_software1/home/pages/stock/stock_conversion/stock_conversion_view.dart';
import 'package:agroo_software1/home/pages/stock/stock_transfer/stock_transfer_view.dart';
import 'package:agroo_software1/home/pages/stock/to_multi_conversion/to_multi_conversion_view.dart';
import 'package:agroo_software1/home/pages/stock/to_single_conversion/to_single_conversion_view.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import 'auto_conversion/autoconversion_view.dart';
import 'conversion formula/conversion_view.dart';

class StockMainpg extends StatelessWidget {
  const StockMainpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Stock Details List Show",
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
            Buttontext: 'Stock Transfer',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StockTransferView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Stock Conversion',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StockConversionView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),

          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'To Single Conversion ',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ToSingleConversionView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Conversion Formula',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConversionView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Auto Conversion',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AutoconversionView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'To Multi Conversion',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ToMultiConversionView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          // Mybutton(
          //   iconData: Icons.monitor_weight_rounded,
          //   Buttontext: 'Inactive Batches',
          //   onTapButtton: () {
          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //         builder: (context) => const AlloPaymentDetails()));
          //   },
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          // Mybutton(
          //   iconData: Icons.monitor_weight_rounded,
          //   Buttontext: 'HSN Update',
          //   onTapButtton: () {
          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //         builder: (context) => const RealloPaymentDetails()));
          //   },
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          // Mybutton(
          //   iconData: Icons.monitor_weight_rounded,
          //   Buttontext: 'Report',
          //   onTapButtton: () {
          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //         builder: (context) => const ReportView()));
          //   },
          // ),
        ],
      ),
    );
  }
}
