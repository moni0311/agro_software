import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class StockSalesValuation extends StatefulWidget {
  const StockSalesValuation({super.key});

  @override
  State<StockSalesValuation> createState() => _StockSalesValuationState();
}

class _StockSalesValuationState extends State<StockSalesValuation> {
  TextEditingController StockSalesDatecontroller = TextEditingController();

  TextEditingController StockSalesCategorycontroller = TextEditingController();

  TextEditingController StockSalesDesignationcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Stock Purchase Valuation',
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
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Seeds',
                'Fertilizer',
                'Trade',
                'Others',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: StockSalesCategorycontroller,
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateRangePicker(Controller: StockSalesDatecontroller),
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
              controller: StockSalesDesignationcontroller,
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
