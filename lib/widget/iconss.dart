import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  IconsView({
    super.key,required this.locations,required this.iconss
  });
  final List<String> locations;
  final List<Icon> iconss;

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
