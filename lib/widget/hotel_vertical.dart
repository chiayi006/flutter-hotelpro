import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/introduce.dart';

class HotelVertical extends StatelessWidget {
  HotelVertical({Key? key}) : super(key: key);

  final List<String> hotelName = [
    'HardRock Cafe Hotel',
    'Four Season Hotel',
    'The Roosevelt Hotel',
    'Hilton London Kensington',
    'Novotel Barcelona',
    'Marina Bay Sands'
  ];
  final List<String> locations = [
    'Bali',
    'New York',
    'London',
    'Paris',
    'Barcelona',
    'Singapore'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroduceHotel()), 
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/hotel0${index + 2}.jpg'),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          color: Colors.black.withOpacity(0.5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 12,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              locations[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          hotelName[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'One of a kind places to stay, now bookable directly in HotelPro',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
