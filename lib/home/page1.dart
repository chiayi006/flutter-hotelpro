import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/searchpage.dart';
import 'package:flutter_hotelpro/widget/hotelview.dart';
import 'package:flutter_hotelpro/widget/titlewidget.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            SearchField(),
            SizedBox(
              height: 20,
            ),
            TitleWidget(
              title: 'Explore Cities Differently',
              subtitle: 'Travel inspired cool tips and suprising storles.',
            ),
            LocationView(),
            SizedBox(height: 10),
            TitleWidget(
              title: 'Handpicked Hotels',
              subtitle:
                  'One of a kind piaces to stay, now bookable directly in HotelPro',
            ),
            HotelView(),
            SizedBox(height: 20),
            TitleWidget(
              title: 'Best Boutique Hotels in AirBnB',
              subtitle:
                  'One of a kind piaces to stay, now bookable directly in HotelPro',
            ),
            HotelView(),
            SizedBox(height: 20),
            TitleWidget(
              title: 'Most Recent Visited',
              subtitle:
                  'One of a kind piaces to stay, now bookable directly in HotelPro',
            ),
            HotelView(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


class SearchField extends StatelessWidget {
  const SearchField({super.key,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.mic),
        hintText: 'Where are you going?',
        filled: true,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
      },
    );
  }
}



class LocationView extends StatelessWidget {
  LocationView({super.key,});
  final List<String> locations = ['Ball', 'New York', 'London', 'Paris', 'Barcelona', 'Singapore'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                margin: EdgeInsets.all(5.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/hotel0${index+3}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(locations[index],style: TextStyle(fontSize: 12),)
            ],
          );
        },
      ),
    );
  }
}
