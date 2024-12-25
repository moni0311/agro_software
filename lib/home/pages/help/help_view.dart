import 'package:flutter/material.dart';


class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: AlertDialog(
        // backgroundColor: Color(0xFFBFC1DB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Column(
          children: [
            Text("Call 63839-12804",style:
              TextStyle(fontSize: 22,color: Color(0xFF99A6EA)),),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "For any queries, ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Please call us ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),

            ),
          ],
        ),
        actions: <Widget>[

          TextButton(
            child: Text('Ok',style: TextStyle(
              fontSize: 22
            ),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}