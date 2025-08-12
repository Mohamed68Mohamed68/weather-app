import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😞',
            style: TextStyle(fontSize: 32),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
  }
}
