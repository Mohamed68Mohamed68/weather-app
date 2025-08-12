import "package:flutter/material.dart";

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    // Clear and sunny conditions
    case 'Sunny':
    case 'Clear':
      return Colors.amber;

    // Cloudy conditions
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return Colors.grey;

    // Mist and fog
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey;

    // Rainy conditions
    case 'Patchy rain possible':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain':
      return Colors.blue;

    // Snowy conditions
    case 'Patchy light snow':
    case 'Light snow':
    case 'Moderate snow':
    case 'Heavy snow':
      return Colors.red;

    // Sleet and freezing conditions
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Heavy freezing drizzle':
      return Colors.brown;

    // Thunderstorms
    case 'Thundery outbreaks possible':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;

    // Default case for unknown conditions
    default:
      return Colors.lightGreen;
  }
}
