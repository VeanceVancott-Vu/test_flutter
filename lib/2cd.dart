// second_screen.dart
import 'package:flutter/material.dart';
import 'package:test_flutter/screens/3rd.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body:  Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
          children: [
            ElevatedButton(
              onPressed: () {
                // Go to the ThirdScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text('Go to Third Screen'),
            ),
            const SizedBox(height: 20), // Adds some space between buttons
            ElevatedButton(
              onPressed: () {
                // Go back to the previous screen (First Screen in this common scenario)
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      )
    );
  }
}