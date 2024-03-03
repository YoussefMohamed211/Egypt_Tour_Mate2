import 'package:flutter/material.dart';

class contain extends StatefulWidget {
  String txt;
  int x=1;
  contain(this.txt,this.x, {super.key});

  @override
  State<contain> createState() => _containState();

}

class _containState extends State<contain> {

  @override
  Widget build(BuildContext context) {
    int x=1;

    return Container(
      child: Row(
        children: [
          SizedBox(width: 40,),
          Text(widget.txt),
          SizedBox(width: 140,),
          InkWell(
            onTap: (){
              setState(() {

              });
              x--;
            },
              child: Container(
                margin: EdgeInsets.only(bottom: 13) ,
                  child: Icon(Icons.minimize))),
          SizedBox(width: 13,),
          Text("${widget.x}"),
          SizedBox(width: 13,),
          InkWell(
              onTap: (){
                setState(() {

                });
                x++;
              },

              child: Icon(Icons.add))


        ],
      ),
        height: 71,
        width: 348,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0, color: Colors.black)));
  }

}
