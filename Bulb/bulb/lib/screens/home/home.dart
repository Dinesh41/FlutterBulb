import 'package:bulb/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: applicationAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/bulb'),
                },
                child: Text(
                  'Access',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
