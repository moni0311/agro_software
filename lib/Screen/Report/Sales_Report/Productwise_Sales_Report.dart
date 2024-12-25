
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class ProductwiseSalesReport extends StatefulWidget {
  const ProductwiseSalesReport({super.key});

  @override
  State<ProductwiseSalesReport> createState() => _ProductwiseSalesReportState();
}

class _ProductwiseSalesReportState extends State<ProductwiseSalesReport> {
  TextEditingController ProductwiseSalesDatecontroller =
      TextEditingController();
  TextEditingController ProductwiseSalesDesignationcontroller =
      TextEditingController();
  TextEditingController ProductwiseSalesTypecontroller =
      TextEditingController();
  TextEditingController ProductwiseSalesProductcontroller =
      TextEditingController();
  TextEditingController ProductwiseSalesCategorycontroller =
      TextEditingController();

  String? selectedRadio = "Include SS";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ProductWise Sales Reports',
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
            DateRangePicker(Controller: ProductwiseSalesDatecontroller),
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
              controller: ProductwiseSalesTypecontroller,
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
              controller: ProductwiseSalesCategorycontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Product',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Uriya 1 Bag',
                'Seeds 100 GMS',
                'Cotton 10 KGS',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: ProductwiseSalesTypecontroller,
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
              controller: ProductwiseSalesDesignationcontroller,
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
