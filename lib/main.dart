import 'package:flutter/material.dart';
import 'components/card.dart' as custom_card;
import 'components/hero.dart' as custom_hero;
import 'components/navbar.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airbnb Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Navbar(),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: custom_hero.Hero(),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 400.0, // Increased the height from 300.0 to 400.0
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: experienceData.length,
                itemBuilder: (context, index) {
                  final experience = experienceData[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: custom_card.Card(
                      title: experience['title'],
                      description: experience['description'],
                      price: experience['price'],
                      coverImg: experience['coverImg'],
                      rating: experience['stats']['rating'],
                      reviewCount: experience['stats']['reviewCount'],
                      location: experience['location'],
                      openSpots: experience['openSpots'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}