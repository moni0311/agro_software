
import 'package:agroo_software1/Screen/purchase.new/purchase_order/purchase_order_view.dart';
import 'package:agroo_software1/Screen/purchase.new/return_invoice_new/return_invoiceview_new.dart';
import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../home/pages/sales/ReturnInvoice/return_invoice_view.dart';
import 'Purchase Invoice/purchase_view.dart';
import 'grn/grn_view.dart';
// import 'Purchase Invoice/purchase_view.dart';dart';


class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Purchase Details List Show",
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
          // Mybutton(
          //   iconData: Icons.receipt_rounded,
          //   Buttontext: 'Purchase Invoice',
          //   onTapButtton: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const PurchaseView()));
          //   },
          // ),

          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Purchase Invoice',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PurchaseOrderView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'GRN',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GrnView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),


          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Return Invoice',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Return_Invoice1()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.add_shopping_cart,
            Buttontext: 'Purchase Order',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PurchaseOrderView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),

          // Mybutton(
          //   iconData: Icons.monitor_weight_rounded,
          //   Buttontext: 'Preferenced Settings',
          //   onTapButtton: () {
          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //         builder: (context) => const PreferencedSetting()));
          //   },
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          // Mybutton(
          //   iconData: Icons.monitor_weight_rounded,
          //   Buttontext: 'Against',
          //   onTapButtton: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const ReturnInvoiceView()));
          //   },
          // ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
