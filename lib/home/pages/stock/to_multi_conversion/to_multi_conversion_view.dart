import 'package:flutter/material.dart';

import '../../../../Screen/purchase.new/Purchase Invoice/purchase.dart';
import '../../sales/DirectDelivery/add_direct_delivery.dart';
import '../conversion formula/conversion_sample.dart';
import 'add_multi_conversion.dart';

class ToMultiConversionView extends StatelessWidget {
  const ToMultiConversionView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'To_Multi Conversion',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddMultiConversion()));
        },
        backgroundColor: const Color(0xffAED9BA),
        child: const Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
            child: TextFormField(
              controller: search,
              keyboardType: TextInputType.name,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 177, 174, 174), width: 0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 177, 174, 174),
                    width: 0,
                  ),
                ),
                hintText: 'Search by name',
                hintStyle: const TextStyle(
                    color: Colors.black45,
                    fontFamily: 'Jost',
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    height: 20 / 14),
              ),
            ),
          ),
          listofsalesorder( 'From Product :  ', 'Rice-50kg','To Product :  ','Milagai Thool-100gm','10', (){
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => const ConversionSample()));
          }

          ),

        ],
      ),
    );
  }

  GestureDetector listofsalesorder(
      String from, String prd1, String to, String prd2,String Qty,  VoidCallback function) {
    return GestureDetector(
      onTap:function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Card(
          elevation: 10,
          child: Container(
            height:200,
            // width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // CircleAvatar(
                //   radius: 30,
                //   backgroundColor: Colors.grey.shade300,
                //   child: Text(
                //     name[0],
                //     style: const TextStyle(
                //         color: Colors.black45,
                //         fontFamily: 'Jost',
                //         fontSize: 20,
                //         fontWeight: FontWeight.w400,
                //         height: 10 / 14),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // from
                      Row(
                        children: [
                          Text(
                            'Date :',
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            '05-12-2022',
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),

                      //from product

                      // To
                      Row(
                        children: [
                          Text(
                            'Product : ',
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          Text(
                            'Lala Sweets',
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(
                            "Stock Location : ",
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          Text(
                            "1",
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),


                      Row(
                        children: [
                          Text(
                            "Batch : ",
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          Text(
                            "78",
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Text(
                            "Qty : ",
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          Text(
                            "10",
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(
                            "Reference : ",
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 20 / 14),
                          ),
                          Text(
                            "TB Minarals",
                            style: const TextStyle(
                                color: Colors.black45,
                                fontFamily: 'Jost',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 20 / 14),
                          ),

                        ],
                      ),


                    ],
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     const Text(
                //       'Total',
                //       style: TextStyle(
                //           color: Colors.black45,
                //           fontFamily: 'Jost',
                //           fontSize: 20,
                //           fontWeight: FontWeight.w400,
                //           height: 20 / 14),
                //     ),
                //     // Text(
                //     //   totalamount,
                //     //   style: const TextStyle(
                //     //       color: Colors.black,
                //     //       fontFamily: 'Jost',
                //     //       fontSize: 25,
                //     //       fontWeight: FontWeight.w400,
                //     //       height: 20 / 14),
                //     // ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}