import 'package:api_handling/models/weather_model/weather_model.dart';
import 'package:api_handling/services/weather_service.dart';
import 'package:flutter/material.dart';

class WeatherSearchScreen extends StatelessWidget {
  final String city;
  const WeatherSearchScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              height: 40,
            ),
            Expanded(child: _buildBody())
          ],
        ));
  }

  Widget _buildBody() {
    return FutureBuilder(
      future: WeatherService().getCityWeather(city),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final weather = snapshot.data as WeatherModel;

        final city = weather.name.toString();

        final sunriseTimestamp = weather.sys!.sunrise;

        final sunsetTimestamp = weather.sys!.sunset;

        DateTime sunrise =
            DateTime.fromMillisecondsSinceEpoch(sunriseTimestamp! * 1000);

        DateTime sunset =
            DateTime.fromMillisecondsSinceEpoch(sunsetTimestamp! * 1000);

        return Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white38.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        color: Colors.red,
                      ),
                      Text(
                        city,
                        style: const TextStyle(
                            color: Colors.white54, fontSize: 32),
                      ),
                    ],
                  ),
                  Text(
                    weather.weather![0].main.toString(),
                    style: const TextStyle(color: Colors.white54, fontSize: 46),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white38.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/thermometer.png',
                              height: 65,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Max Temp',
                                  style: TextStyle(
                                    // color: Colors.white54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  '${weather.main!.tempMax} \u2103',
                                  style: const TextStyle(
                                    //color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/thermometer1.png',
                              height: 65,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Min Temp',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  '${weather.main!.tempMin} \u2103',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/sunrise.png',
                              height: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Sunrise',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  sunrise.toString().substring(11, 19),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/ocean.png',
                              height: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Sunset',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  sunset.toString().substring(11, 19),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
