import 'package:flutter/material.dart';
import 'package:site_galleria/fourthscreen.dart';

//import 'package:site_galleria/fourthscreen.dart';
//import 'package:site_galleria/thirdscreen.dart';
//import 'package:site_galleria/fourthscreen.dart';
//import 'package:site_galleria/thirdscreen.dart';
//import 'package:site_galleria/thirdscreen.dart';
//import 'package:site_galleria/secondscreen.dart';
import 'package:site_galleria/thirdscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    // home: Scaffold(
       //  body: Container(
          
          // color: Colors.black, // Set the background color to black
      //  ),
      // ),
     // home: Secondscreen(),
     home: Thirdscreen(),
    // home: Optional(),
   // home: Fourthscreen(),
  // home:Fourthscreen(),
  //home: Optionals()
   //  )
    );
  }
}

