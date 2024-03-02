import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/iconss.dart';
import 'package:flutter_hotelpro/widget/titlewidget.dart';

class IntroduceHotel extends StatefulWidget {
  const IntroduceHotel({Key? key}) : super(key: key);

  @override
  State<IntroduceHotel> createState() => _IntroduceHotelState();
}

class _IntroduceHotelState extends State<IntroduceHotel> {
  bool isFavorite = false;
    final List<String> locations = [
    'Wifi',
    'Ac',
    'Restaurant',
    'Pool',
    'More'
  ];
  final List<Icon> iconss = [
    Icon(Icons.wifi, color: Colors.white),
    Icon(Icons.ac_unit, color: Colors.white),
    Icon(Icons.restaurant, color: Colors.white),
    Icon(Icons.pool, color: Colors.white),
    Icon(Icons.more, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/hotel09.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hard Rock Hotel',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
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
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Kuta Bail, indonesia')
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
                                Text('1 hour (3.4 km)')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('4.8 (80 reviews)')
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 100, 
                          height: 100, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), 
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/map.jpg'), 
                              fit: BoxFit.cover, 
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    IconsView(locations: locations,iconss: iconss,),
                    SizedBox(height: 30,),
                    TitleWidget(
                      title: 'About Hotel',
                      subtitle:
                          'This 3-star hotel combines style, comfort and the modern side of Pantianak city on the Kapuas River delta, Weat Kalimantan. As the capital of the province.',
                    ),
                    SizedBox(height: 10,),
                    TitleWidget(
                      title: 'Nearby Places',
                      subtitle:
                          'A few places around this hotel. Market, restaurant, cafe, lounge, mall and etc...',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.9,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Price / night',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '\$ 2800',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blue.shade800),
                        ),
                        child: Text(
                          'Book Room',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                color: Colors.black,
                iconSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 70,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.share_sharp),
                color: Colors.black,
                iconSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
