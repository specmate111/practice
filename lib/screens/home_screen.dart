import 'package:api_handling/core/widgets/bottom_nav_bar.dart';
import 'package:api_handling/screens/movies/movies.dart';
import 'package:api_handling/screens/news/news.dart';
import 'package:flutter/material.dart';

import 'weather/weather_screen.dart';

import 'podcasts/podcasts.dart';
import 'timezone/timezone.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _pages = [
    const Movies(),
    const Podcasts(),
    const NewsScreen(),
    const Timezone(),
    const FunFacts()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
