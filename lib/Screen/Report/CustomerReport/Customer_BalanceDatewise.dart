import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateSwitchtype.dart';
import '../../../Reusable/Dropdownbutton.dart';

class CustomerBalanceDatewiseReport extends StatefulWidget {
  const CustomerBalanceDatewiseReport({super.key});

  @override
  State<CustomerBalanceDatewiseReport> createState() =>
      _CustomerBalanceDatewiseReportState();
}

class _CustomerBalanceDatewiseReportState
    extends State<CustomerBalanceDatewiseReport> {
  TextEditingController CDateWisecontroller = TextEditingController();
  TextEditingController CBWiseDesignationcontroller = TextEditingController();

  String? selectedRadio = " ";
  String? Balance = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Customer Balance Datewise Reports',
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
            DateRangePicker(
              Controller: CDateWisecontroller,
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
              controller: CBWiseDesignationcontroller,
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


//  Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//               child: TextField(
//                 controller: BillwiseSalesProductcontroller,
//                 decoration: const InputDecoration(
//                   hintText: 'Product',
//                   hintStyle: TextStyle(
//                     color: Colors.black38,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(8)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Color.fromARGB(255, 91, 85, 85), width: 1),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Color.fromARGB(255, 91, 85, 85), width: 1),
//                   ),
//                 ),
//               ),
//             ),
           
