import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class StockStatus extends StatefulWidget {
  const StockStatus({super.key});

  @override
  State<StockStatus> createState() => _StockBranchwiseSummaryState();
}

class _StockBranchwiseSummaryState extends State<StockStatus> {
  TextEditingController StockStatusDatecontroller = TextEditingController();

  TextEditingController StockStatusLocationcontroller = TextEditingController();

  TextEditingController StockStatusDesignationcontroller =
      TextEditingController();
  String? selectedRadio = "Without Stock";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Stock Status',
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
            Row(
              children: [
                Radio<String>(
                  value: "With Stock",
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                  },
                ),
                const Text(
                  'WithStock',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 20),
                Radio<String>(
                  value: "Without Stock",
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                  },
                ),
                const Text(
                  'Without Stock',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateRangePicker(Controller: StockStatusDatecontroller),
            const Text(
              'Stock Location',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Chennai',
                'Salem',
                'Erode',
                'Namakkal',
                'Pollachi',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: StockStatusLocationcontroller,
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
              controller: StockStatusDesignationcontroller,
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
