
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class SalesCustomerSummary extends StatefulWidget {
  const SalesCustomerSummary({super.key});

  @override
  State<SalesCustomerSummary> createState() => _SalesCustomerSummaryState();
}

class _SalesCustomerSummaryState extends State<SalesCustomerSummary> {
  TextEditingController SalesSummaryDatecontroller = TextEditingController();
  TextEditingController SalesSummaryDesignationcontroller =
      TextEditingController();
  TextEditingController SalesSummaryTypecontroller = TextEditingController();
  
  TextEditingController SalesSummaryCategorycontroller =
      TextEditingController();

  String? selectedRadio = "Include SS";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          ' Sales Customer Summary',
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
            DateRangePicker(Controller: SalesSummaryDatecontroller),
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
                'Wholesale B-B',
                'Bill of supply',
                'Branch Supply',
                'CS Retail',
                'SS',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: SalesSummaryTypecontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio<String>(
                  value: "Include SS",
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                  },
                ),
                const Text(
                  'Include SS',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 20),
                Radio<String>(
                  value: "Exclude SS",
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                  },
                ),
                const Text(
                  'Exclude SS',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Seeds',
                'Fertilizers',
                'Trades',
                'Fruits',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: SalesSummaryCategorycontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Designation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'EXCEL',
                'PDF',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: SalesSummaryDesignationcontroller,
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
