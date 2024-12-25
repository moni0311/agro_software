import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class TaxwisePurchaseReturnReport extends StatefulWidget {
  const TaxwisePurchaseReturnReport({super.key});

  @override
  State<TaxwisePurchaseReturnReport> createState() =>
      _TaxwisePurchaseReturnReportState();
}

class _TaxwisePurchaseReturnReportState
    extends State<TaxwisePurchaseReturnReport> {
  TextEditingController TPurchasedatecontroller = TextEditingController();
  TextEditingController TPurchaseDesignationcontroller =
      TextEditingController();
  TextEditingController TPurchaseSalesTypecontroller = TextEditingController();
  TextEditingController TPurchaseCategorycontroller = TextEditingController();

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
            DateRangePicker(Controller: TPurchasedatecontroller),
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
              controller: TPurchaseDesignationcontroller,
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
              controller: TPurchaseSalesTypecontroller,
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
              controller: TPurchaseCategorycontroller,
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
