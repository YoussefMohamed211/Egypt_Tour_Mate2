import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../date_screen/date_screen.dart';
import 'btn2.dart';
import 'days_container.dart';

class DaysCounter extends StatelessWidget {
  static const String routeName = "DaysCounter";
  var x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          ImageIcon(
            AssetImage("assets/images/logo.png"),
            color: Colors.black,
            size: 50,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("How many days are you staying?",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10.h,
            ),
            Text("Step 4",
                style: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10.h,
            ),
            Text("You can drag and drop to record cities",
                style: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 10,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                children: [
                  contain(
                    "Giza",
                    x,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  contain(
                    "Cairo",
                    x,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  contain(
                    "Luxor",
                    x,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Btn2(Color(0xFF89C9FF), Colors.white, "Back", () {
                  Navigator.pop(context);
                }),
                Spacer(),
                Btn2(Colors.white, Color(0xFF89C9FF), "Continue", () {
                  Navigator.pushNamed(context, DateScreen.routeName);
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
