import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/hotel_horizontal.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/cat.png'),
            ),
          ),
          actions: [
            SizedBox(width: 20),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.logout),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'erhacorpdotcom@gmail.com',
                style: TextStyle(fontSize: 12),
              ),
              Text('Good Afternoon, Tripper',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              IconsView(),
              SizedBox(
                height: 20,
              ),
              Text('Favorite Hotel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              HotelHorizontal(),
              SizedBox(
                height: 20,
              ),
              Text('Visited Hotel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              HotelHorizontal(),
            ],
          ),
        ));
  }
}

class IconsView extends StatelessWidget {
  IconsView({
    super.key,
  });
  final List<String> locations = [
    'Update',
    'Upcoming',
    'Posts',
    'History',
    'Card'
  ];
  final List<Icon> iconss = [
    Icon(Icons.edit, color: Colors.white),
    Icon(Icons.calendar_today, color: Colors.white),
    Icon(Icons.post_add, color: Colors.white),
    Icon(Icons.history, color: Colors.white),
    Icon(Icons.credit_card, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) {
            return Column(children: [
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.blue[900], 
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: iconss[index],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                locations[index],
                style: TextStyle(fontSize: 12),
              )
            ]);
          },
        ),
      ),
    );
  }
}
