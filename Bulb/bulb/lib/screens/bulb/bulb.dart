import 'package:bulb/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Bulb extends StatefulWidget {
  @override
  _BulbState createState() => _BulbState();
}

class _BulbState extends State<Bulb> {
  bool isSwitched = false;
  String image = 'off';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: applicationAppBar(),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image(
              image: AssetImage("assets/bulb-$image.png"),
            ),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                image = isSwitched == true ? 'on' : 'off';
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }
}
