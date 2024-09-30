import 'package:flutter/material.dart';


class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: Scaffold(
        
        body: Stack(
          children: [
            // This container fills the whole screen
            Container(color: Colors.black),
            // Positioned widget to place the circle
            Positioned(
              top: MediaQuery.of(context).size.height / 3- 50, // Center vertically
              left: -100, // Adjust left position as needed
              child: Container(
                width: 300, // Diameter of the circle
                height: 300, // Diameter of the circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 78, 98, 243), // Circle color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
