import 'package:api_handling/models/timezones_list.dart';
import 'package:api_handling/screens/timezone/timezone_detail_screen.dart';
import 'package:api_handling/services/news_service.dart';
import 'package:api_handling/services/timezone_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Timezone extends StatefulWidget {
  const Timezone({super.key});

  @override
  State<Timezone> createState() => _TimezoneState();
}

class _TimezoneState extends State<Timezone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Pick a Timezone',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: timezoneList.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () async {
                    
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return TimezoneDetails(timezone: timezoneList[index],);
                        }),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white70,
                      ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                        child: Text(
                          timezoneList[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
