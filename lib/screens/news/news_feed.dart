import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsFeed extends StatelessWidget {
  final String url;
  final String title;
  final String image;
  final String content;
  final String postedBy;
  final String postedOn;
  final String author;
  const NewsFeed({
    super.key,
    required this.url,
    required this.title,
    required this.image,
    required this.content,
    required this.postedBy,
    required this.postedOn,
    required this.author,
  });

  launchNews(String news) async {
    final Uri url = Uri.parse(news);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postedBy),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 280,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Posted on - $postedOn'),
                Row(
                  children: [
                    const Text('By '),
                    Text(
                      author,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
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
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              content,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                launchNews(url);
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[350],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'View on browser',
                    ),
                    Icon(Icons.open_in_browser_rounded)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
