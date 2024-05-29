import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String coverImg;
  final double rating;
  final int reviewCount;
  final String location;
  final int openSpots;

  const Card({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.coverImg,
    required this.rating,
    required this.reviewCount,
    required this.location,
    required this.openSpots,
  });

  @override
  Widget build(BuildContext context) {
    String badgeText;
    if (openSpots == 0) {
      badgeText = 'Sold Out';
    } else if (location == 'Online') {
      badgeText = 'Online';
    } else {
      badgeText = '';
    }

    return Container(
      width: 175,
      padding: const EdgeInsets.all(8.0),
      child: Expanded( // Added the Expanded widget here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/$coverImg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (badgeText.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      badgeText,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16.0,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '$rating',
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                  '($reviewCount) • $location',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Text(
              'From \$${price.toStringAsFixed(2)} / person',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}