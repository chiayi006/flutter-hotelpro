import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/widget/hotel_horizontal.dart';
import 'package:flutter_hotelpro/widget/iconss.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});
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
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),),
                      content: Text("Are you sure to Logout?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            minimumSize: MaterialStateProperty.all(Size(30, 30)),
                          ),
                          child: Text("Cancel",style: TextStyle(color:Colors.black),),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[700]), 
                            minimumSize: MaterialStateProperty.all(Size(30, 30)),
                          ),
                          child: Text("Log out",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.logout),
              ),
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
              IconsView(
                locations: locations,
                iconss: iconss,
              ),
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
