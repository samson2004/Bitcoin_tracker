import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const bmi());
}
 
class bmi extends StatelessWidget {
  const bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
          color: Color(0xFF0F0F1E),

      ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.red
          ),
          scaffoldBackgroundColor: Color(0xFF0F0F1E), //0xFF262A4C
          textTheme: TextTheme(
              bodyText2: TextStyle(
                color: Colors.white,
              ))
      ),
      home: inputpage(),
    );
  }
}

