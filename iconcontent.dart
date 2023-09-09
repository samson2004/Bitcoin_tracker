import 'package:flutter/material.dart';
import 'constants.dart';

class Iconcontent extends StatelessWidget {
  Iconcontent({required this.icon,required this.text});
  final String  text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 80),
        SizedBox(height: 10.0,),
        Text(text,style: klabeltextstyle,),

      ],
    );
  }
}

