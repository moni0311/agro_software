import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class TaxwiseSalesReturnReport extends StatefulWidget {
  const TaxwiseSalesReturnReport({super.key});

  @override
  State<TaxwiseSalesReturnReport> createState() =>
      _TaxwiseSalesReturnReportState();
}

class _TaxwiseSalesReturnReportState extends State<TaxwiseSalesReturnReport> {
  TextEditingController Taxwisedatecontroller = TextEditingController();
  TextEditingController TaxwiseDesignationcontroller = TextEditingController();
  TextEditingController TaxwiseSalesTypecontroller = TextEditingController();
  TextEditingController TaxwiseCategorycontroller = TextEditingController();
  TextEditingController TaxTypecontroller = TextEditingController();
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
            DateRangePicker(Controller: Taxwisedatecontroller),
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
              controller: TaxwiseDesignationcontroller,
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
              controller: TaxwiseSalesTypecontroller,
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
              controller: TaxwiseCategorycontroller,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Tax Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                '0%',
                '5%',
                '10%',
                '12%',
                '18%',
                '28%',
                    'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: TaxwiseCategorycontroller,
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
