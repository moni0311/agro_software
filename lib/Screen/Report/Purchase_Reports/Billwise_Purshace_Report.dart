import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class BillwisePurshaceReport extends StatefulWidget {
  const BillwisePurshaceReport({super.key});

  @override
  State<BillwisePurshaceReport> createState() => _BillwisePurshaceReportState();
}

class _BillwisePurshaceReportState extends State<BillwisePurshaceReport> {
  TextEditingController PurchaseDatecontroller = TextEditingController();

  TextEditingController PurchaseDesignationcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Billwise Purshace Report',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateRangePicker(Controller: PurchaseDatecontroller),
            const Text(
              'Destination',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const ['EXCEL', 'PDF', 'Select Option'],
              selectedItem: 'Select Option',
              controller: PurchaseDesignationcontroller,
            ),
            const SizedBox(
              height: 30,
            ),
            SaveButton(
              SaveButtontext: 'Display',
              onSaveButtton: () {},
            )
          ],
        ),
      ),
    );
  }
}
