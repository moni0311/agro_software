
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class SalesManReport extends StatefulWidget {
  const SalesManReport({super.key});

  @override
  State<SalesManReport> createState() => _SalesManReportState();
}

class _SalesManReportState extends State<SalesManReport> {
  TextEditingController SalesManDatecontroller = TextEditingController();
  TextEditingController SalesManDesignationcontroller = TextEditingController();
  TextEditingController SalesManTypecontroller = TextEditingController();

  TextEditingController SalesManCategorycontroller = TextEditingController();
  TextEditingController SalesMancontroller = TextEditingController();

  String? selectedRadio = "Include SS";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'SalesMan Reports',
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
            DateRangePicker(Controller: SalesManDatecontroller),
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
              controller: SalesManTypecontroller,
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
              controller: SalesManCategorycontroller,
            ),
            const Text(
              'SalesMan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: TextField(
                controller: SalesMancontroller,
                decoration: const InputDecoration(
                  hintText: 'Product',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 91, 85, 85), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 91, 85, 85), width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(
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
              controller: SalesManDesignationcontroller,
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
