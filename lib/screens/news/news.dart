import 'package:api_handling/models/news/news.dart';
import 'package:api_handling/screens/news/news_feed.dart';
import 'package:api_handling/services/news_service.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
  });

  @override
  State<NewsScreen> createState() => _PodcastsState();
}

class _PodcastsState extends State<NewsScreen> {
  get builder => null;
  //final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'News',
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return FutureBuilder(
      future: ApiService2().getNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        final result = snapshot.data as News;

        return Container(
          child: ListView.builder(
            itemCount: result.articles!.length,
            itemBuilder: (context, index) {
              final src = result.articles![index].urlToImage.toString();
              final title = result.articles![index].title.toString();
              final desc = result.articles![index].description.toString();
              final content = result.articles![index].content.toString();
              final url = result.articles![index].url.toString();
              final postedBy = result.articles![index].source!.name.toString();
              final postedOn = result.articles![index].publishedAt!
                  .toString()
                  .substring(0, 10);
              final author = result.articles![index].author.toString();
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NewsFeed(
                          image: src,
                          url: url,
                          title: title,
                          content: content,
                          postedBy: postedBy,
                          postedOn: postedOn,
                          author: author,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                  height: 310,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 226, 232),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 210,
                          child: Image.network(
                            src == ""
                                ? 'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg'
                                : src,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        title,
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Text(
                        desc,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
