import 'package:flutter/material.dart';

class PurchaseReportTaxwisepage extends StatefulWidget {
  const PurchaseReportTaxwisepage({super.key});

  @override
  State<PurchaseReportTaxwisepage> createState() => _PurchaseReportTaxwisepageState();
}

class _PurchaseReportTaxwisepageState extends State<PurchaseReportTaxwisepage> {
   @override
  Widget build(BuildContext context) {
    String ?selectedTypes;

    final List<String> CategoryTypes = [
    'PESTICIDES', 'SEEDS', 'FERTILIZERS', 'OTHERS'
  ];

    final List<String> monthTypes=[
'January','february','March','April','May','June','July','August','September','October','November','December'
    ];


    final List<String> YearTypes=['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030'
 ];

 String? destinationOption;
  final List<String> DestinationTypes = [
    'EXCEL', 'PDF'
  ];

  String? taxOption;
  final List<String> taxTypes=[
   '0%','5%','12%','18%','28'
  ];
    return  Scaffold(
      appBar: AppBar(
           backgroundColor: const Color.fromARGB(255, 184, 222, 203),
        title: Text(
          "GST Purchase Report Taxwise",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
      ),
    ),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: ListView(
        children: [
           SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedTypes,
              onChanged: (String? newValue) {
                setState(() {
                  selectedTypes = newValue;
                });
                
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: "Select Option",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              items: CategoryTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Tax Type",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: taxOption,
              onChanged: (String? newValue) {
                setState(() {
                  taxOption = newValue;
                });
                print("TaxOption: $taxOption");
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: "Select One Option",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              items: taxTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 25,),
           Text(
              "Month",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            DropdownButtonFormField<String>(
              value: selectedTypes,
               onChanged: (String? newValue){
                setState(() {
                  selectedTypes=newValue;
                });
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: "Select Month",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              items: monthTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              
              ),

              SizedBox(height: 25,),
               Text(
              "Year",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            DropdownButtonFormField<String>(
              value: selectedTypes,
               onChanged: (String? newValue){
                setState(() {
                  selectedTypes=newValue;
                });
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: "Select Year",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              items: YearTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              
              ),

               SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Destination",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: destinationOption,
              onChanged: (String? newValue) {
                setState(() {
                  destinationOption = newValue;
                });
                print("Destination Option: $destinationOption");
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: "Select Option",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              items: DestinationTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
             SizedBox(height: 35),
            Center(
              child: TextButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue), // Blue background color
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0), // Adjust padding as needed
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    ),
                  ),
                ),
                child: Text(
                  "Display",
                  style: TextStyle(
                    color: Colors.white, // White text color
                    fontSize: 18,
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