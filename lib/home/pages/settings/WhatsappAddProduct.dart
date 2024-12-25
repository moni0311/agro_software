import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/Dropdownbutton.dart';

class WhatsappAddProduct extends StatefulWidget {
  const WhatsappAddProduct({super.key});

  @override
  State<WhatsappAddProduct> createState() => _WhatsappAddProductState();
}

class _WhatsappAddProductState extends State<WhatsappAddProduct> {
  TextEditingController whatappContentcontroller = TextEditingController();
  TextEditingController whatappCategorycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Details'),
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
            CustomDropdownButton(
              dropDownItem: const [
                'Seeds',
                'Fertilizers',
                'Trade',
                'Fruits',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: whatappCategorycontroller,
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Content',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: TextFormField(
                controller: whatappContentcontroller,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  hintText: '',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.black87),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SaveButton(
              SaveButtontext: 'Save',
              onSaveButtton: () {},
            )
          ],
        ),
      ),
    );
  }
}
