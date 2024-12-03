import 'package:flutter/material.dart';
import 'package:ukl/Bottomnav.dart';

class MyBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Booking"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "There's no active booking!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            MovieCard(
              imagePath: 'assets/gladiator.jpeg',
              title: "GLADIATOR II",
              category: "Action, Adventure",
              rating: 9.5,
              ageLimit: "D 17+",
            ),
            SizedBox(height: 10),
            MovieCard(
              imagePath: 'assets/redone.png',
              title: "RED ONE",
              category: "Action, Adventure",
              rating: 9.3,
              ageLimit: "R 13+",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(1),
    );
  }
}

class MovieCard extends StatelessWidget {
  String imagePath;
  String title;
  String category;
  double rating;
  String ageLimit;

  MovieCard({
    required this.imagePath,
    required this.title,
    required this.category,
    required this.rating,
    required this.ageLimit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "$ageLimit   $category",
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 15),
                      Text(
                        rating.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
