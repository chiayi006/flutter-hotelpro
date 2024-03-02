import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/hotel_vertical.dart';
import 'package:flutter_hotelpro/widget/titlewidget.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Things To Do Near You',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Lifestyle',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  'Music',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  'Art',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  'Books',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  'Sport',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TitleWidget(
                    title: 'Handpicked Hotels - Lifestyle',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TitleWidget(
                    title: 'Handpicked Hotels - Music',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TitleWidget(
                    title: 'Handpicked Hotels - Art',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TitleWidget(
                    title: 'Handpicked Hotels - Books',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TitleWidget(
                    title: 'Handpicked Hotels - Sport',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

