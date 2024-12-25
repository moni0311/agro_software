import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class StockBookCompany extends StatefulWidget {
  const StockBookCompany({super.key});

  @override
  State<StockBookCompany> createState() => _StockBookCompanyState();
}

class _StockBookCompanyState extends State<StockBookCompany> {
  TextEditingController StockBookDatecontroller = TextEditingController();

  TextEditingController StockBrandcontroller = TextEditingController();

  TextEditingController StockBookDesignationcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Stock Book Company',
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
              'Brand/Company',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: TextField(
                controller: StockBrandcontroller,
                decoration: const InputDecoration(
                  hintText: 'Brand/Company',
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
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateRangePicker(Controller: StockBookDatecontroller),
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
              controller: StockBookDesignationcontroller,
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
