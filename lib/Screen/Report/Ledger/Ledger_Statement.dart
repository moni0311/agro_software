import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class LedgerStatement extends StatefulWidget {
  const LedgerStatement({super.key});

  @override
  State<LedgerStatement> createState() => _LedgerStatementState();
}

class _LedgerStatementState extends State<LedgerStatement> {
  TextEditingController LedgerDatecontroller = TextEditingController();
  TextEditingController LedgerNamecontroller = TextEditingController();
  TextEditingController LedgerDesignationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Ledger Statements Report',
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
            DateRangePicker(Controller: LedgerDatecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Ledger Name',
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
              controller: LedgerNamecontroller,
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
              controller: LedgerDesignationcontroller,
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
