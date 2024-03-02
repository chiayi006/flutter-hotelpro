import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/buttons.dart';
import 'package:flutter_hotelpro/widget/hotel_horizontal.dart';
import 'package:flutter_hotelpro/widget/titlewidget.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'assets/images/city.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.23,
                left: 16,
                right: 16,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'London, England ',
                    filled: true,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          BtnWidget(), // Placing BtnWidget here
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                  title: 'Handpicked Hotels',
                  subtitle:
                      'One of a kind places to stay, now bookable directly in HotelPro',
                ),
                HotelHorizontal(),
                SizedBox(height: 20),
                TitleWidget(
                  title: 'Best Boutique Hotels in AirBnB',
                  subtitle:
                      'One of a kind places to stay, now bookable directly in HotelPro',
                ),
                HotelHorizontal(),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
