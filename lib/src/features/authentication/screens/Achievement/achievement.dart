import 'package:flutter/material.dart';
import 'package:immerse/src/utils/constants/image_strings.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 60),
        
              Text(
                "VISITED ARTWORKS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
        
              const SizedBox(height: 20),
        
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
        
              const SizedBox(height: 30),
        
              // Scrollable list of artworks
              Content(
                title: "Tuptup",
                location: "National Museum of Fine Arts",
                image: TImages.content1,
                color: Colors.teal,
              ),
        
              const SizedBox(height: 20),
        
              Content(
                title: "Borak",
                location: "National Museum of Fine Arts",
                image: TImages.content2,
                color: Colors.yellow,
              ),
        
              const SizedBox(height: 20),
        
              Content(
                title: "Tiyataan-a-Tuladan",
                location: "National Museum of Fine Arts",
                image: TImages.content3,
                color: Colors.orange,
              ),
            ],
          ),
        )
      )
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.title,
    required this.location,
    required this.image,
    required this.color,
  });

  final String title, location, image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}