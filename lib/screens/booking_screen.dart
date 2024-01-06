import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Booking Page'),
        ),
        body: SingleChildScrollView(
          child: BookingPage(),
        ),
      ),
    );
  }
}

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffe6f1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText('HAIR STYLISTS'),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HairStylistCard(
                  name: 'Asma Zouihri',
                  photoPath: 'assets/hs1.jpg',
                ),
                HairStylistCard(
                  name: 'Chaima Besbes',
                  photoPath: 'assets/hs3.jpg',
                ),
                HairStylistCard(
                  name: 'Siwar Melki',
                  photoPath: 'assets/hs3.jpg',
                ),
                HairStylistCard(
                  name: 'Anissa Houidi',
                  photoPath: 'assets/im2.png',
                ),
              ],
            ),
            SizedBox(height: 18.0),
            StyledText('DATES ET TEMPS'),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (final dateData in [
                  {'day': 'Sun', 'date': '12'},
                  {'day': 'Mon', 'date': '13'},
                  {'day': 'Tue', 'date': '14'},
                  {'day': 'Wed', 'date': '15'},
                  {'day': 'Thu', 'date': '16'},
                  {'day': 'Fri', 'date': '17'},
                  {'day': 'Sat', 'date': '18'},
                ])
                  Column(
                    children: [
                      DateBlock(
                        day: dateData['day'] ?? '',
                        date: dateData['date'] ?? '',
                      ),
                      SizedBox(height: 8.0),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 12.0),
            StyledText('TEMPS DISPONIBLE'),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 8; i <= 18; i++) AvailabilityBlock(time: '$i:00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HairStylistCard extends StatelessWidget {
  final String name;
  final String photoPath;

  const HairStylistCard({required this.name, required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(photoPath),
          radius: 40.0,
        ),
        SizedBox(height: 8.0),
        Text(name),
      ],
    );
  }
}

class DateBlock extends StatelessWidget {
  final String day;
  final String date;

  const DateBlock({required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Color(0xffffc7da),
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            day,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AvailabilityBlock extends StatelessWidget {
  final String time;

  const AvailabilityBlock({required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Color(0xffffc7da),
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 2.0,
          color: Color(0xffff5e5e), // Match the color of the line
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 22.0,
            color: Color(0xffff5e5e), // Match the color of the line
          ),
        ),
      ],
    );
  }
}
