
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Reusable/ButtonReusable.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Transaction Details List Show",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        // toolbarHeight: 40,
        // toolbarOpacity: 1,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(25),
        //       bottomLeft: Radius.circular(25)),
        // ),
        // elevation: 0.00,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SFcontainers('moni','moni1','assets/agroicons/dot.png',Colors.orange,size),
       ]
        ),
      ),
    );
  }

  Widget SFcontainers(
      String SFtext, String SF1text, String SFimage, Color Sfcolor,Size size) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          color: Sfcolor,
          // color: const Color(0xffE35B5B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  Text(SFtext,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(SF1text,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Container(
              height: size.height * 0.08,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                //color: const Color(0xffE35B5B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image(
                image: AssetImage(SFimage),
                fit: BoxFit.fitHeight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
