import 'package:flutter/material.dart';

class Hero extends StatelessWidget {
  const Hero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 400,
            height: 400,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/photo-grid.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Online Experiences',
              style: TextStyle(
                fontSize: 54.0, // Increase the font size
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Join unique interactive activities led by one-of-a-kind hosts-all without leaving home.',
            style: TextStyle(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}