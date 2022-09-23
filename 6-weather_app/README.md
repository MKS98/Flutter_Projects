1- lib/main.dart:
        - main file to run the app
        - calls for the provider above all screens
        - the app theme changes in the MartialApp widget
2- lib/pages/home_page.dart:
        - AppBar contains title, action to navigate to search_page.dart
        - body changes depending on data coming from api and app theme
3- lib/pages/seach_page.dart:
        - takes the user input (cityname)
        - returns the cityname to the provider
4- pubspec.yaml  ==> packages used:
        - http: ^0.13.5
        - provider: ^6.0.3
        - assets:
            - assets/images/
5- lib/services/weather_service.dart:
        - api service created and only calls for the WeatherModel required data lib/models/weather_model.dart
6- lib/models/weather_model.dart:
        - created WeatherModel for all data coming from API
        - getImage function to get image suitable for the weather state
        - getThemeColor function to change the app Theme depending on the weather state
7- lib/providers/weather_provider.dart:
        - provider model takes two arguments WeatherModel and cityname 
        - used in search_page to apply changes to home_page when data is submitted
        