import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class Billwise_Sales_Return_Reports extends StatefulWidget {
  const Billwise_Sales_Return_Reports({super.key});

  @override
  State<Billwise_Sales_Return_Reports> createState() =>
      _BillwiseReceiptReportsState();
}

class _BillwiseReceiptReportsState
    extends State<Billwise_Sales_Return_Reports> {
  TextEditingController Returndatecontroller = TextEditingController();
  TextEditingController ReturnDesignationcontroller = TextEditingController();
  TextEditingController ReturnSalesTypecontroller = TextEditingController();
  TextEditingController ReturnCategorycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Billwise Sales Return Reports',
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
            DateRangePicker(Controller: Returndatecontroller),
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
              controller: ReturnDesignationcontroller,
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
              controller: ReturnSalesTypecontroller,
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
              controller: ReturnCategorycontroller,
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
