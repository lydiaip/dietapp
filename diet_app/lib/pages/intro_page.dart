import 'package:flutter/material.dart';
import 'package:diet_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding around the column
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center column content vertically
          children: [
            // Placeholder for logo, consider using an Image widget here
            // For now, let's add a spacer to simulate the logo taking up space
            Spacer(), // Adjust the spacer to control how much top space is used

            /// Title
            Text(
              'Be healthy, be full',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 10),

            // Subtitle
            Text(
              'Get your healthy recipes without compromising on taste',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            SizedBox(height: 35),

            // Start button
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 185, 185, 172), // A beige color
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: const Text(
                      'Get new recipe',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
                width: 250,
              ),
            ),

            Spacer(), // Adds space at the bottom, making the content more centered
          ],
        ),
      ),
    );
  }
}
