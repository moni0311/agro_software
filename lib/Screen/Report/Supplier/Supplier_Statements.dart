
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class SupplierStatements extends StatefulWidget {
  const SupplierStatements({super.key});

  @override
  State<SupplierStatements> createState() => _SupplierBalanceState();
}

class _SupplierBalanceState extends State<SupplierStatements> {
  TextEditingController SupplierDatecontroller = TextEditingController();
  TextEditingController SupplierReportTypecontroller = TextEditingController();
  TextEditingController SupplierNamecontroller = TextEditingController();
  TextEditingController Designationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Supplier Statements Report',
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
            DateRangePicker(Controller: SupplierDatecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Report Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Detail',
                'Sample',
                'Product'
                    'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: SupplierReportTypecontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Product Type',
                'Fertilizer Type',
                'Seeds Type',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: SupplierNamecontroller,
            ),
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
              controller: Designationcontroller,
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
