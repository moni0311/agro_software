
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class TaxwiseSalesReport extends StatefulWidget {
  const TaxwiseSalesReport({super.key});

  @override
  State<TaxwiseSalesReport> createState() => _TaxwiseSalesReportState();
}

class _TaxwiseSalesReportState extends State<TaxwiseSalesReport> {
  TextEditingController TaxwiseSalesDatecontroller = TextEditingController();
  TextEditingController TaxwiseSalesDesignationcontroller =
      TextEditingController();
  TextEditingController TaxwiseSalesTypecontroller = TextEditingController();

  TextEditingController TaxwiseSalesCategorycontroller =
      TextEditingController();
  TextEditingController TaxwiseSalesTaxTypecontroller =
      TextEditingController();

  String? selectedRadio = "Include SS";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'TaxWise Sales Reports',
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
            DateRangePicker(Controller: TaxwiseSalesDatecontroller),
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
              controller: TaxwiseSalesTypecontroller,
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
              controller: TaxwiseSalesCategorycontroller,
            ),
            const SizedBox(
              height: 10,
            ),
              const Text(
              'Tax Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                '0 %',
                '5 %',
                '12 %',
                '18 %',
                '28 %',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: TaxwiseSalesTaxTypecontroller,
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
              controller: TaxwiseSalesDesignationcontroller,
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
