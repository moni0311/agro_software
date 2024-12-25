import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class ProductwisePurchaseReport extends StatefulWidget {
  const ProductwisePurchaseReport({super.key});

  @override
  State<ProductwisePurchaseReport> createState() =>
      _ProductwisePurchaseReportState();
}

class _ProductwisePurchaseReportState extends State<ProductwisePurchaseReport> {
  TextEditingController ProductDatecontroller = TextEditingController();
  TextEditingController ProductSalescontroller = TextEditingController();
  TextEditingController ProductCategoryDesignationcontroller =
      TextEditingController();
  TextEditingController Productcontroller = TextEditingController();

  TextEditingController ProductDesignationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Productwise Purchase Report',
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
            DateRangePicker(Controller: ProductDatecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sales Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Wholesales B-B',
                'Retail',
                'SS',
                'CS Retail',
                'Bill of Supply',
                'Branch Supply'
                    'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: ProductSalescontroller,
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
                'Trade',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: ProductCategoryDesignationcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Products',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Uriya 1 bag',
                'Paddy 50GMS',
                'Sulphate 2 bags',
                'Tomoto Seeds 120 GMS',
                'Potash 3 bags',
                'Ammonium Chloride 2 bgs'
                    'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: Productcontroller,
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
              controller: ProductDesignationcontroller,
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
