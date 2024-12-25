import 'package:flutter/material.dart';
class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
       leading: Icon(Icons.settings,color: Colors.blueAccent,),
       title: Text("Murugar"),

      ),
      // body: Image.asset("assets/images/cil_.jpg"),
      body: Column(
        children: [
          Container(
            child:Image.asset("assets/murugar.jpg"),
          )
        ],
      )
      // body: Image.network("https://www.pinterest.com/pin/vel-muruga-vel-on-instagram-jayakvel-thaipusam2024-thaipusam-lordmurugan-ipohthaipusam-batucaves-batucavestemple-thaipusampenang-penangthaipusam-in-2024--631981760240434804/")
    );
  }
}
