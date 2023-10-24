import 'package:bitcointracker/price_screen.dart';
import 'package:flutter/material.dart';
import 'price_screen.dart';

void main(){
  runApp(bitcointracker());
}

class bitcointracker extends StatelessWidget {
  const bitcointracker({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      home: price(),
    );
  }
}
