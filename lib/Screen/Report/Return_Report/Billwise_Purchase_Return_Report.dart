
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class BillwisePurchaseReturnReport extends StatefulWidget {
  const BillwisePurchaseReturnReport({super.key});

  @override
  State<BillwisePurchaseReturnReport> createState() =>
      _BillwisePurchaseReturnReportState();
}

class _BillwisePurchaseReturnReportState
    extends State<BillwisePurchaseReturnReport> {
  TextEditingController BPurchasedatecontroller = TextEditingController();
  TextEditingController BPurchaseDesignationcontroller =
      TextEditingController();
  TextEditingController BPurchaseSalesTypecontroller = TextEditingController();
  TextEditingController BPurchaseCategorycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Taxwise Sales Return Report',
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
            DateRangePicker(Controller: BPurchasedatecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Destination',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'PDF',
                'EXCEL',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: BPurchaseDesignationcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sales Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Retail',
                'Wholesales B-B',
                'Bill of Supply ',
                'Branch Supply',
                'CS Retail',
                'SS',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: BPurchaseSalesTypecontroller,
            ),
            const Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'SEEDS',
                'FERTILIZER',
                'OTHERS',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: BPurchaseCategorycontroller,
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
