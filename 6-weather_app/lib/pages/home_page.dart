import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';

import '../providers/weather_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchPage();
              }));
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text('Weather App'),
      ),
      body: weatherData == null
          ? //! if no data: screen defult UI
          Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            )
          : //! if there is data: screen UI
          Container(
              decoration: BoxDecoration(
                //? gradient color
                gradient: LinearGradient(
                  colors: [
                    weatherData!.getThemeColor()[600]!,
                    weatherData!.getThemeColor()[300]!,
                    weatherData!.getThemeColor()[100]!,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 3),
                  Text(
                    Provider.of<WeatherProvider>(context).cityName!,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    weatherData!.date.toString(),
                    style: TextStyle(fontSize: 22),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(weatherData!.getImage()),
                      Text(
                        '${weatherData!.temp?.toInt()}',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Text('MaxTemp: ${weatherData!.maxTemp?.toInt()}'),
                          Text('MinTemp: ${weatherData!.minTemp?.toInt()}'),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    weatherData?.weatherStateName ??
                        '', //! just for null safety if first part is null put ' ' instead
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(flex: 6),
                ],
              ),
            ),
    );
  }
}
