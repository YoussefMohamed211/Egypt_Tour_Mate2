import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../places/place_det.dart';
import '../request_ride/ride_request.dart';
import '../tabs/location_tab.dart';


class Add_places extends StatelessWidget {
  static const String routeName = "add places";

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("3",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff89C9FF))),
                          Text("days",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff89C9FF))),
                          Text("cairo",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      ),
                      height: 80.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1.5, color: Colors.black))),
                  SizedBox(
                    width: 40.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("2",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff89C9FF))),
                            Text("days",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff89C9FF))),
                            Text("Luxor",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ],
                        ),
                        height: 80.h,
                        width: 84.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1.5, color: Colors.black))),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("1",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff89C9FF))),
                          Text("day",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff89C9FF))),
                          Text("Aswan",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      ),
                      height: 80.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5, color: Colors.black)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cairo",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                    Text("3 days",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
                height: 77.h,
                width: 360.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Aswan_place.png"),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1.5.w, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 1",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PlaceDet.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5.w, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 2",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      //  Navigator.pushNamed(context, places.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 3",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, places.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5.w, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Luxor",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                    Text("2 days",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
                height: 77.h,
                width: 360.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Luxor_place.png"),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1.5.w, color: Colors.black)),
              ),
              //luxor 2days
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 1",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, places.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5.w, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 2",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, places.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Aswan",
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                    Text("1 days",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
                height: 77.h,
                width: 360.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Aswan_place1.png"),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1.5, color: Colors.black)),
              ),
              //luxor 2days
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    "day 1",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, places.routeName);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      child: Center(
                          child: Text(
                        "+ Add place",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff89C9FF)),
                      )),
                      height: 33.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.5, color: Color(0xff89C9FF))),
                    ),
                  )
                ],
              ),
            ),
             SizedBox(height: 20.h,),
             InkWell(
               onTap: (){
                 Navigator.pushNamed(context, LocationTab.routeName);
               },
                child: Text("Request Ride?",style: TextStyle(color: Color(0xff89C9FF), fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
