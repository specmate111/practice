import 'package:api_handling/core/core.dart';
import 'package:api_handling/models/movies/movies.dart';
import 'package:api_handling/screens/movies/movie_details_screen.dart';
import 'package:api_handling/services/movies_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  void initState() {
    ApiServices().getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trending Movies',
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: FutureBuilder(
                future: ApiServices().getMovies(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error.toString()));
                  }
                  final result = snapshot.data as MoviesD;

                  return GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.5,
                    children: List.generate(result.results!.length, (index) {
                      final movieName = result.results![index].title.toString();
                      final overview =
                          result.results![index].overview.toString();
                      final date =
                          result.results![index].releaseDate.toString();
                      final imageUrl = result.results![index].backdropPath;
                      final imageUrl2 = result.results![index].posterPath;
                      final rating =
                          result.results![index].popularity.toString();
                      final vote = result.results![index].voteCount.toString();

                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MovieDetailsScreen(
                              title: movieName,
                              image: imageUrl,
                              content: overview,
                              release: date,
                              popularity: rating,
                              count: vote,
                            );
                          }));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                height: 240,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        '$imageAppendUrl$imageUrl'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                // child: Text(
                                //   movieName == 'null' ? '' : movieName,
                                //   style: TextStyle(
                                //       fontSize: 16, color: Colors.white),
                                // ),
                              ),
                              Text(
                                movieName == 'null' ? 'No Title' : movieName,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
