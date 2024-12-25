import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Dropdownbutton.dart';

class CustomerStatementReport extends StatefulWidget {
  const CustomerStatementReport({super.key});

  @override
  State<CustomerStatementReport> createState() =>
      _CustomerStatementReportState();
}

class _CustomerStatementReportState extends State<CustomerStatementReport> {
  TextEditingController CStatementDatecontroller = TextEditingController();
  TextEditingController CStatementDesignationcontroller =
      TextEditingController();
  TextEditingController CStatementTyprcontroller = TextEditingController();
  TextEditingController CStatementCustomerNamecontroller =
      TextEditingController();

  String? selectedRadio = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Customer Statement Reports',
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
            DateOption(
              datecontroller: CStatementDatecontroller,
            ),
            const Text(
              'Report Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Sample',
                'Detail',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: CStatementTyprcontroller,
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Customer Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: TextField(
                controller: CStatementCustomerNamecontroller,
                decoration: const InputDecoration(
                  hintText: 'Customer Name',
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
              controller: CStatementDesignationcontroller,
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
