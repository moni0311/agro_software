
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class Invoicecountreport extends StatefulWidget {
  const Invoicecountreport({super.key});

  @override
  State<Invoicecountreport> createState() => _InvoicecountreportState();
}

class _InvoicecountreportState extends State<Invoicecountreport> {
  TextEditingController InvoicecountDatecontroller = TextEditingController();
  TextEditingController InvoicecountDesignationcontroller =
      TextEditingController();

  TextEditingController InvoicecountUsercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Invoice Count Reports',
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
            DateRangePicker(Controller: InvoicecountDatecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'User',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: InvoicecountUsercontroller,
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
              controller: InvoicecountDesignationcontroller,
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
