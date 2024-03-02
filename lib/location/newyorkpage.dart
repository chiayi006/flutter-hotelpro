import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/hotel_vertical2.dart';
import 'package:flutter_hotelpro/widget/titlewidget.dart';

class NewYorkPage extends StatelessWidget {
  const NewYorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'New York',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            SizedBox(width: 20),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.settings),
            ),
          ],
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 35.0),

            unselectedLabelColor: Colors.grey, 
            labelColor: Colors.black, 
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Refundable',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  '5 Stars',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  '4 Stars',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'Lower Price',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'High Price',
                  style: TextStyle(fontSize: 14),
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
                    title: 'Bali Hotel - Refundable',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical2(),
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
                    title: 'Bali Hotel - 5 Stars',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical2(),
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
                    title: 'Bali Hotel - 4 Stars',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical2(),
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
                    title: 'Bali Hotel - Lower Price',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical2(),
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
                    title: 'Bali Hotel - Higher Price',
                    subtitle:
                        'One of a kind places to stay, now bookable directly in HotelPro',
                  ),
                  HotelVertical2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
