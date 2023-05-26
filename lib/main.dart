import 'Tip_Calculator.dart';
import 'util/colors.dart';
import 'package:flutter/material.dart';


//*****************************************************Slider/TextField/Theme dark and bright***************************************

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home:const TipCalculator(),
    );
  }
}

void main() => (runApp(const TipCalculator()));















