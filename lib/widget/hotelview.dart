import 'package:flutter/material.dart';

class HotelView extends StatelessWidget {
  HotelView({
    super.key,
  });
  final List<String> hotelName = [
    'HardRock Cafe Hotel',
    'Four Season Hotel',
    'The Roosevelt Hotel',
    'Hllton London Kensington',
    'Novotel Barccelona title',
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
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 250,
              margin: EdgeInsets.only(right: 10),
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset(
                            'assets/images/hotel0${index + 1}.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '3.3KM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 12,
                                ),
                                SizedBox(width: 5,),
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
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
