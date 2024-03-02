import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/introduce.dart';

class HotelVertical2 extends StatefulWidget {
  HotelVertical2({Key? key}) : super(key: key);

  @override
  State<HotelVertical2> createState() => _HotelVertical2State();
}

class _HotelVertical2State extends State<HotelVertical2> {
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
  List<bool> isFavoriteList = [false, false, false, false, false, false];

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
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[400],
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavoriteList[index] = !isFavoriteList[index];
                              });
                            },
                            icon: Icon(
                              isFavoriteList[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavoriteList[index] ? Colors.red : Colors.grey[700],
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                            Text(
                              hotelName[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow[600],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow[600],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow[600],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow[600],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow[600],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.map,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '1 hours (3.4 km)',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.8 (90)',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Text(
                              '\$105',
                              style:
                                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '/room /night',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
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
