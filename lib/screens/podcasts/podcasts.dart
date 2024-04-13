import 'package:api_handling/models/podcasts/pod.dart';
import 'package:api_handling/services/podcasts_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({
    super.key,
  });

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  get builder => null;
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Text(
            'Podcasts',
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
    );
  }

  Widget _buildBody() {
    return FutureBuilder(
      future: APIService().getPodcasts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString(),style:const TextStyle(color:Colors.white),),);
        }
        final result = snapshot.data as Pod;

        return Container(
          child: ListView.builder(
            itemCount: result.data!.podcastUnionV2!.episodesV2!.items!.length,
            itemBuilder: (context, index) {
              var name = result.data!.podcastUnionV2!.episodesV2!.items![index]
                  .entity!.data!.name
                  .toString();
              String url = result.data!.podcastUnionV2!.episodesV2!
                  .items![index].entity!.data!.audio!.url
                  .toString();
              String img = result.data!.podcastUnionV2!.episodesV2!
                  .items![index].entity!.data!.img!.sources![0].url
                  .toString();

              return Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 36, 94, 142),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: ClipRRect(child: Icon(Icons.music_note)
                          //Image.network(img),
                          ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(onPressed: () {}, icon:const Icon(Icons.play_arrow))
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
