import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 1200,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7.4564,
                offset: const Offset(0, 2.98256),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0.01 * 550,
          right: 0.01 * 550,
          top: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              // color: const Color(#),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          top: 0.0, // Adjust the top position as needed
          child: Container(
            width: 100.0, // Set the desired width for the logo
            height: 100.0, // Set the desired height for the logo
            child: Image.asset(
              'assets/images/airbnb-logo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}