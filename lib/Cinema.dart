import 'package:flutter/material.dart';
import 'package:ukl/Bottomnav.dart';

class Cinema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          // Location and Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    value: 'Malang',
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'Malang', child: Text('Malang')),
                      DropdownMenuItem(
                          value: 'Jakarta', child: Text('Jakarta')),
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 5,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Movie / Cinema',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Movie and Cinema Tabs
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/Movies');
                        },
                        child: Text("Movies")),
                    SizedBox(height: 4),
                    CircleAvatar(
                        radius: 3, backgroundColor: Colors.transparent),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Text(
                      'Cinema',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    CircleAvatar(radius: 3, backgroundColor: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                CinemaCard(
                  title: 'Malang Town Square',
                  distance: '8.03 km away',
                  type: 'REGULAR® LUXE',
                ),
                CinemaCard(
                  title: 'Lippo Plaza Batu',
                  distance: '11.23 km away',
                  type: 'REGULAR',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(3),
    );
  }
}

class CinemaCard extends StatelessWidget {
  final String title;
  final String distance;
  final String type;

  const CinemaCard({
    required this.title,
    required this.distance,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.location_on, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    distance,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.movie, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    type,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
