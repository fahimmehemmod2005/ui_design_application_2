
import 'package:flutter/material.dart';
import 'package:ui_design_application_2/Pages/ui_design.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: UiDesign(),
   );
  }

}