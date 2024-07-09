/*
class WeatherState{}
class WeatherInitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState{}
class WeatherFailureState extends WeatherState{}*/
import 'package:flutter_udemy_tharwat2/weather_app/models/weather_model.dart';

class WeatherState{}
class WeatherInitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);

}
class WeatherFailureState extends WeatherState{
  final String errorMessage;

  WeatherFailureState(this.errorMessage);

}
/*
class WeatherState{}
class WeatherInitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState{}
class WeatherFailureState extends WeatherState{}*/
