import 'package:flutter/material.dart';
import '../../Screen/Report/Total_Report_Navigation.dart';
import '../../Screen/Transaction/Payment/payment_view.dart';
import '../../Screen/Transaction/Receipt/receipt_view.dart';
import '../../Screen/Transaction/TransactionMainPage.dart';
import '../../Screen/purchase.new/purchase_page.dart';
import '../compountes/home_compountes/create_items.dart';
import '../compountes/home_compountes/quickacess_items.dart';
import '../pages/cash&banking/cash&banking.dart';
import '../pages/help/help_view.dart';
import '../pages/image_slide.dart';
import '../pages/opening_transaction/opening_transaction_pg.dart';
import '../pages/salespage.dart';
import '../pages/settings/settings_mainpg.dart';
import '../pages/sms/sms_mainpg.dart';
import '../pages/stock/stock_mainpg.dart';

class Homepage2 extends StatelessWidget {
  List<String> Gridlist(){
    return[
      'Sales',
      'Purchase',
      'Reciept',
      'Payment',
    ];
  }
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> listt= Gridlist()
;    double w = MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    // double sales = 30570.05;
    // double purchase = 954232.87;

    List<Widget> createItemslist = [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: CreateItems(
          color: const Color(0xFFFF9D67).withAlpha(120),
          imagePath: 'assets/images/transaction.png',
          name: 'Transaction',
          function: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TransactionDetails()));

          },
        ),
      ),
      CreateItems(
        color: const Color(0xFF897FFF).withAlpha(100),
        imagePath: 'assets/images/credit-card.png',
        name: 'Cash & Banking',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cashbanking()));
        },
      ),
      CreateItems(
        color: const Color.fromARGB(0, 250, 191, 14).withAlpha(100),
        imagePath: 'assets/images/opening-transaction.png',
        name: 'Opening Transaction',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OpeningTransactionPg()));

        },
      ),
      CreateItems(
        color: const Color(0xFFAFDFFF).withAlpha(120),
        imagePath: 'assets/images/stock.png',
        name: 'Stock',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StockMainpg()));
        },
      ),
      CreateItems(
        color: const Color(0xFF7CC28C).withAlpha(120),
        imagePath: 'assets/agroicons/smss.png',
        name: 'SMS',
        function: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SmsMainpg()));

        },
      ),
      CreateItems(
        color: const Color(0xFFE8B0E6).withAlpha(120),
        imagePath: 'assets/agroicons/rport.png',
        name: 'Reports',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ReportTypes()));

        },
      ),
      CreateItems(
        color: const Color(0xFFC9EAA5).withAlpha(120),
        imagePath: 'assets/agroicons/daybook.png',
        name: 'Day Book',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ReportTypes()));

        },
      ),




      // CreateItems(
      //   color: const Color(0xFFFF3636).withAlpha(120),
      //   imagePath: 'assets/images/sales.png',
      //   name: 'Sales',
      //   function: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Salespage()));
      //   },
      // ),
      // CreateItems(
      //   color: const Color(0xFF498A5B).withAlpha(120),
      //   imagePath: 'assets/images/shopping-cart.png',
      //   name: 'Purchase',
      //   function: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurchasePage()));
      //   },
      // ),
      // CreateItems(
      //   color: const Color(0xFFFF9D67).withAlpha(120),
      //   imagePath: 'assets/images/transaction.png',
      //   name: 'Transaction',
      //   function: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TransactionDetails()));
      //
      //   },
      // ),


    ];

    List<Widget> quickacessItemslist = [
      // QuickacessItems(
      //   color: const Color(0xFFFF0000).withAlpha(110),
      //   imagepath: 'assets/images/shipping-truck.png',
      //   name: 'Day Book',
      //   function: () {},
      // ),
      // QuickacessItems(
      //   color: const Color(0xFFFF9D67).withAlpha(110),
      //   imagepath: 'assets/images/Align-1.png',
      //   name: 'E-Invoice',
      //   function: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PriceList()));
      //   },
      // ),
      QuickacessItems(
        color: const Color(0xFF0FA15B).withAlpha(110),
        imagepath: 'assets/images/clock.png',
        name: 'Others',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SettingsMainpg()));
        },
      ),



      QuickacessItems(
        // color: const Color(0xFF000000).withAlpha(110),
        color: Color(0xFF8DD7F0),
        imagepath: 'assets/images/support_agent.png',
        name: 'Help',
        function: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpView()));
        },
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            appbarUI(),
            const SizedBox(
              height: 5,
            ),
            const ImageSlide(),
            const SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 20),
            //       child: Container(
            //         height:200,
            //         width:300,
            //         decoration: BoxDecoration(
            //           color: Colors.white
            //         ),
            //         child: GridView.builder(
            //        // physics: NeverScrollableScrollPhysics(),
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2,
            //             crossAxisSpacing: 3, // Horizontal space between items
            //             mainAxisSpacing: 4,
            //
            //
            //           ),
            //           itemCount: listt.length,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Card(
            //               color: Colors.orange,
            //               child: Center(
            //                 child: Text(listt[index],style:
            //                   TextStyle(fontSize: 20,color: Colors.white),),
            //               ),
            //             );
            //
            //           },
            //
            //         ),
            //
            //       ),
            //     ),
            //   ],
            // ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height:100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Color(0xffdfe7fd)

                        ),

                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Salespage()));
                            },
                            child: Text("Sales",style:
                              TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right:20),
                      child: Container(
                        height:100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Color(0xffcaf0f8)



                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchasePage()));
                            },
                            child: Text("Purchase",style:
                              TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    SizedBox(width: 15,),

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height:100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Color(0xfffae0e4)



                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ReceiptView()));

                            },
                            child: Text("Receipt",style:
                              TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right:20),
                      child: Container(
                        height:100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Color(0xffe5ebea)

                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const PaymentView()));
                            },
                            child: Text("Payment",style:
                              TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quick Access',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      height: 20.23 / 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),




            SizedBox(
              // height: 300,
              height: h* 1.00,
              child: GridView.builder(
                  itemCount: createItemslist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 120),
                  itemBuilder: (context, index) {
                    return createItemslist[index];
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            // const Row(
            //   children: [
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text(
            //       'Quick Access',
            //       style: TextStyle(
            //         fontFamily: 'Jost',
            //         fontWeight: FontWeight.w600,
            //         fontSize: 17,
            //         height: 20.23 / 12,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 10,
            ),
            // Column(
            //   children: [
            //     SizedBox(
            //       height: 260,
            //       child: GridView.builder(
            //           itemCount: createItemslist.length,
            //           physics: const NeverScrollableScrollPhysics(),
            //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //
            //               crossAxisCount:2,
            //               mainAxisSpacing:3,
            //               // crossAxisSpacing: 1,
            //               mainAxisExtent: 130),
            //           itemBuilder: (context, index) {
            //             return quickacessItemslist[index];
            //           }),
            //     ),
            //   ],
            // ),



          ],
        ),
      ),
    );
  }

  Row appbarUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(


              width: 4,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Color.fromARGB(66, 121, 116, 116),
                    //     spreadRadius: 0,
                    //     blurRadius: 1,
                    //   )
                    // ]
                  ),
                  child: Center(

                    child: Image.asset(
                      'assets/images/menus.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
            ),
            SizedBox(width: 15,),
            Center(

              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF5E5DF0



                  ),

                ),
                child: Center(
                  child: Text("Agro Soft",style:
                    TextStyle(
                      fontSize: 17,
                      color: Colors.white
                    ),),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Color.fromARGB(66, 87, 83, 83),
                    //     spreadRadius: 0,
                    //     blurRadius: 2,
                    //   )
                    // ]
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/bell.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
            ),
            const SizedBox(
              width: 4,
            )
          ],
        ),
      ],
    );
  }
  void _datefilterbottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController) {
            return Datefilterbottomsheet(scrollController: scrollController);
          },
        );
      },
    );
  }
}
Widget Gridd(){
  return Container(
    child: Container(
      child: Text("Date"),

    ),



  );

}


class Datefilterbottomsheet extends StatefulWidget {
  final ScrollController scrollController;

  const Datefilterbottomsheet({super.key, required this.scrollController});

  @override
  State<Datefilterbottomsheet> createState() => _DatefilterbottomsheetState();
}

class _DatefilterbottomsheetState extends State<Datefilterbottomsheet> {
  String year = 'This Month';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: ListView(
          controller: widget.scrollController,
          children: [
            const Text(
              'Date Filter',
              style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  height: 24 / 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                _radiobuttons('FY 23-24', 'FY 23-24'),
                _radiobuttons('FY 22-23', 'FY 22-23'),
                Row(
                  children: [
                    Radio(
                      value: 'Today',
                      groupValue: year,
                      onChanged: (value) {
                        setState(() {
                          year = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                        color: const Color(0xFF263238).withAlpha(150),
                        fontFamily: 'Jost',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 24 / 20,
                      ),
                    ),
                    Text(
                      '(Default)',
                      style: TextStyle(
                        color: const Color(0xFF278942).withAlpha(150),
                        fontFamily: 'Jost',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 24 / 20,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '(01-01-2024 - 31-12-2024)',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 20 / 16,
                          color: Color(0xFF8D8D8D)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                _radiobuttons('Yesterday', 'Yesterday'),
                _radiobuttons('This Week', 'This Week'),
                _radiobuttons('Last Week', 'Last Week'),
                _radiobuttons('This Month', 'This Month(Default)'),
                _radiobuttons('Last Month', 'Last Month'),
                _radiobuttons('This Year', 'This Year'),
                _radiobuttons('Last Year', 'Last Year'),
                _radiobuttons('Last Quarter', 'Last Quarter'),
                _radiobuttons('Custom', 'Custom'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xFF278942),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                height: 34 / 24,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _radiobuttons(String value, String text) {
    return Row(
      children: [
        // Radio(
        //   value: value,
        //   groupValue: year,
        //   onChanged: (value) {
        //     setState(() {
        //       year = value!;
        //     });
        //   },
        //   activeColor: Colors.green,
        // ),
        Text(
          text,
          style: TextStyle(
            color: const Color(0xFF263238).withAlpha(150),
            fontFamily: 'Jost',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 24 / 20,
          ),
        ),
      ],
    );
    
  }
}
