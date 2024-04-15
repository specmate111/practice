import 'package:api_handling/core/core.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String title;
  final String image;
  final String content;
  final String release;
  final String popularity;
  final String count;

  const MovieDetailsScreen({
    super.key,
    required this.title,
    required this.image,
    required this.content,
    required this.release,
    required this.popularity,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 280,
              child: Image.network(
                '$imageAppendUrl$image',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      '$count Likes',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.groups_3_rounded,
                      color: Colors.redAccent,
                    ),
                    Text(
                      'Popularity  $popularity',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Released on $release',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 17, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
