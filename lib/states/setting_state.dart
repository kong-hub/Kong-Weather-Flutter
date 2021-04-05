import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

enum TemperatureUnit {
  fahrenheit,
  celsius
}

class SettingState extends Equatable {
  final TemperatureUnit temperatureUnit;
  const SettingState({@required this.temperatureUnit}): assert(temperatureUnit != null);

  @override
  List<Object> get props => [];
}