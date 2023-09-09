import 'package:flutter/material.dart';

class reusablecard extends StatelessWidget {
  reusablecard({required this.activecolor,this.cardChild,this.onpress});
  final Color activecolor;
  final Widget? cardChild;
  final VoidCallback? onpress;



  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(13.0),
        padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
        height: 220,
        width: 500,
        child: cardChild,
        decoration: BoxDecoration(
            color:activecolor,
            borderRadius: BorderRadius.circular(10.0)
        ),

      ),
    );
  }
}