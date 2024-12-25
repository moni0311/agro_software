import 'package:agroo_software1/home/pages/cash&banking/statements/statements_sample.dart';
import 'package:flutter/material.dart';

  import '../../sales/AgainstView/againstview.dart';



  class StatementsView extends StatelessWidget {
    const StatementsView ({super.key});

    @override
    Widget build(BuildContext context) {
      TextEditingController search = TextEditingController();
      Size size = MediaQuery.of(context).size;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffAED9BA),
          title: const Text(
            'Statements',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (context) => const AddChequeIssue()));
        //   },
        //   backgroundColor: const Color(0xffAED9BA),
        //   child: const Icon(
        //     Icons.add,
        //     size: 20,
        //     color: Colors.white,
        //   ),
        // ),
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
            listofsalesorder(size,'Priya', '09/08/2024 - 10/08/2024', '1530',
                    () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const  StatementsSample()));

                    })

          ],
        ),

      );

    }

    GestureDetector listofsalesorder(Size size, String name, String date,
        String totalamount, VoidCallback function) {
      return GestureDetector(
        onTap: function,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Container(
            height: 80,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.shade300,
                  child: Text(
                    name[0],
                    style: const TextStyle(
                        color: Colors.black45,
                        fontFamily: 'Jost',
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Jost',
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            height: 20 / 14),
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                            color: Colors.black45,
                            fontFamily: 'Jost',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 20 / 14),
                      ),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }





  }