import 'package:flutter/material.dart';

import '../../../Reusable/Dropdownbutton.dart';

class Bulktransactioncontent extends StatefulWidget {
  const Bulktransactioncontent({super.key});

  @override
  State<Bulktransactioncontent> createState() => _BulktransactioncontentState();
}

class _BulktransactioncontentState extends State<Bulktransactioncontent> {
  TextStyle boldTextStyle({Color color = const Color(0xff52796f)}) {
    return TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 20);
  }

  TextStyle boldTextStylecell(
      {Color color = const Color.fromARGB(255, 105, 105, 105)}) {
    return TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 20);
  }

  DataRow buildDataRow(
    String id,
    String Name,
    String Price,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(
          id,
          style: boldTextStylecell(),
        )),
        DataCell(Text(
          Name,
          style: boldTextStylecell(),
        )),
        DataCell(Text(
          Price,
          style: boldTextStylecell(),
        )),
      ],
    );
  }

  TextEditingController BTCcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Balance Transaction Stock',
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
            CustomDropdownButton(
              dropDownItem: const [
                'Export Basic',
                'Export All',
                'Export Selected',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: BTCcontroller,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DataTable(
                    headingRowColor:
                        MaterialStateProperty.all(Colors.green.shade100),
                    border: TableBorder.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    columns: [
                      DataColumn(
                        label: Text(
                          'ID',
                          style: boldTextStyle(),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Item Name',
                          style: boldTextStyle(),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Item Price',
                          style: boldTextStyle(),
                        ),
                      ),
                    ],
                    rows: [
                      buildDataRow(
                        '1',
                        'Item 1',
                        '78',
                      ),
                      buildDataRow(
                        '2',
                        'Item 2',
                        '987',
                      ),
                      buildDataRow(
                        '3',
                        'Item 3',
                        '878',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
