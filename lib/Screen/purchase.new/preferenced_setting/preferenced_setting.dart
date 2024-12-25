// import 'package:agrosoft/Screen/purchase.new/Purchase%20Invoice/purchase.dart';
// import 'package:flutter/material.dart';
//
// import '../../../home/pages/sales/Invoice/add_invoice.dart';
// import '../../../home/pages/sales/Invoice/invoice_product_data.dart';
//
// class PreferencedSetting extends StatelessWidget {
//   const PreferencedSetting ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController ptype = TextEditingController();
//     TextEditingController tax = TextEditingController();
//     TextEditingController taxtype = TextEditingController();
//     Size size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xffAED9BA),
//         title: const Text(
//           'GRN',
//           style: TextStyle(fontSize: 24, color: Colors.black),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => const AddInvoice()));
//         },
//         backgroundColor: const Color(0xffAED9BA),
//         child: const Icon(
//           Icons.add,
//           size: 20,
//           color: Colors.white,
//         ),
//       ),
//       body: ListView(
//         children: [
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Preferenced Setting',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           // Inputform(
//           //   label: 'Customer Name',
//           //   controller: name,
//           // ),
//           Inputform(label: 'Purchase Type', controller: ptype),
//           const DropdownButtonWidget(
//             dropDownItem: ['CGST/SGST', 'IGST'],
//             selectedItem: 'CGST/SGST',
//           ),
//
//           Inputform(label: 'Tax', controller: tax),
//           Inputform(label: 'Tax Type', controller: taxtype),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Types',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           const DropdownButtonWidget(
//             dropDownItem: ['Include Tax', 'Exclude Tax'],
//             selectedItem: 'Include Tax',
//           ),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Date',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           // Datepicker(datecontroller: datecontroller),
//           // Inputform(label: 'Reference', controller: reference),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Due Date',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 35,
//                 ),
//               ),
//             ],
//           ),
//           // Datepicker(datecontroller: duedatecontroller),
//           const SizedBox(
//             height: 15,
//           ),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Goods & Services',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           const Addmoreingoods(),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Discount',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           // Inputform(label: 'Discount', controller: discount),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Round',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           // Inputform(label: 'Round', controller: round),
//           const Row(
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Total',
//                 style: TextStyle(
//                   fontFamily: 'Jost',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                   height: 43 / 30,
//                 ),
//               ),
//             ],
//           ),
//           // Inputform(label: 'Total', controller: total),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {},
//                 child: Container(
//                   height: 50,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(25)),
//                   child: const Center(
//                       child: Text(
//                         'Save',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Jost',
//                           fontSize: 22,
//                           fontWeight: FontWeight.w500,
//                           height: 43 / 30,
//                         ),
//                       )
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     );
//   }
//
//   GestureDetector listofsalesorder(
//       Size size, String name, String date, String totalamount,VoidCallback function) {
//     return GestureDetector(
//       onTap:function,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//         child: Container(
//           height: 80,
//           width: size.width,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.grey.shade100),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.grey.shade300,
//                 child: Text(
//                   name[0],
//                   style: const TextStyle(
//                       color: Colors.black45,
//                       fontFamily: 'Jost',
//                       fontSize: 25,
//                       fontWeight: FontWeight.w400,
//                       height: 20 / 14),
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: const TextStyle(
//                         color: Colors.black,
//                         fontFamily: 'Jost',
//                         fontSize: 25,
//                         fontWeight: FontWeight.w400,
//                         height: 20 / 14),
//                   ),
//                   Text(
//                     date,
//                     style: const TextStyle(
//                         color: Colors.black45,
//                         fontFamily: 'Jost',
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                         height: 20 / 14),
//                   )
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Total',
//                     style: TextStyle(
//                         color: Colors.black45,
//                         fontFamily: 'Jost',
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                         height: 20 / 14),
//                   ),
//                   Text(
//                     totalamount,
//                     style: const TextStyle(
//                         color: Colors.black,
//                         fontFamily: 'Jost',
//                         fontSize: 25,
//                         fontWeight: FontWeight.w400,
//                         height: 20 / 14),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }