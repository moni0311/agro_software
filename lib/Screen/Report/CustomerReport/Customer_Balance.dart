import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Dropdownbutton.dart';

class CustomerBalanceReport extends StatefulWidget {
  const CustomerBalanceReport({super.key});

  @override
  State<CustomerBalanceReport> createState() => _CustomerBalanceReportState();
}

class _CustomerBalanceReportState extends State<CustomerBalanceReport> {
  TextEditingController CDatecontroller = TextEditingController();
  TextEditingController CBDesignationcontroller = TextEditingController();
  TextEditingController CBLcontroller = TextEditingController();

  String? selectedRadio = " ";
  String? Balance = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Customer Balance Reports',
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
              'Order',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Radio<String>(
                  value: "With Balance",
                  groupValue: Balance,
                  onChanged: (value) {
                    setState(() {
                      Balance = value;
                    });
                  },
                ),
                const Text(
                  'With Balance',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 20),
                Radio<String>(
                  value: "Without Balance",
                  groupValue: Balance,
                  onChanged: (value) {
                    setState(() {
                      Balance = value;
                    });
                  },
                ),
                const Text(
                  'Without Balance',
                  style: TextStyle(fontSize: 16),
                ),
              ],
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
            SizedBox(
              height: 10,
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateOption(
              datecontroller: CDatecontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Ledger Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Gold',
                'Silver',
                'Cycle',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: CBLcontroller,
            ),
            const SizedBox(
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
              controller: CBDesignationcontroller,
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
           
