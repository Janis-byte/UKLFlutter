import 'package:flutter/material.dart';
import 'package:ukl/Bottomnav.dart';

class MovieScreen extends StatelessWidget {
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
                  children: const [
                    Text(
                      'Movie',
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
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/Cinema');
                        },
                        child: Text("Cinema")),
                    SizedBox(height: 4),
                    CircleAvatar(
                        radius: 3, backgroundColor: Colors.transparent),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Movie Cards Grid
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7,
              children: [
                MovieCard(
                  title: 'BILA ESOK IBU TIADA',
                  ageRating: '(13+)',
                  imagePath: 'assets/movie1.jpeg',
                ),
                MovieCard(
                  title: 'WICKED',
                  ageRating: '(SU)',
                  imagePath: 'assets/movie1.jpeg',
                ),
                MovieCard(
                  title: 'GLADIATOR',
                  ageRating: '(18+)',
                  imagePath: 'assets/movie1.jpeg',
                ),
                MovieCard(
                  title: 'HORROR MOVIE',
                  ageRating: '(18+)',
                  imagePath: 'assets/movie1.jpeg',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(2),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String ageRating;
  final String imagePath;

  const MovieCard({
    Key? key,
    required this.title,
    required this.ageRating,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              imagePath,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ageRating,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  backgroundColor: Color.fromARGB(255, 7, 38, 63),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
