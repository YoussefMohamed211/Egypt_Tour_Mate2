import 'package:flutter/material.dart';

class CateRide extends StatelessWidget {
  CateRide(this.txt1,this.img1,this.txt2,this.txt3, {super.key}) ;
  String txt1;
  String txt2;
  String txt3;
  String img1;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 348,
      decoration: BoxDecoration(
          color: Color(0xFFF0F4F8),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0, color: Colors.transparent)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image(
              image: AssetImage(img1),

            ),
          ),

          Container(

            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text( txt1,style: TextStyle(fontSize: 12,color: Colors.black),),
                  Text( txt2,style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w100),),
                  Text( txt3,style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w100),),
                ],
              ),
            ),
          ),
          SizedBox(width: 110,),
           Icon(Icons.done_all,size: 20,color: Colors.green,)
          
        ],
      ),
    );
  }
}
