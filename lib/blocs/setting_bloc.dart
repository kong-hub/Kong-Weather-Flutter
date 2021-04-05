import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_repo_flutter/events/setting_event.dart';
import 'package:weather_repo_flutter/states/setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc(): super(SettingState(temperatureUnit: TemperatureUnit.celsius));

  @override
  Stream<SettingState> mapEventToState(SettingEvent settingEvent) async* {
    if(settingEvent is SettingEventToggleUnit) {
      yield SettingState(
          temperatureUnit: state.temperatureUnit == TemperatureUnit.celsius
              ? TemperatureUnit.fahrenheit : TemperatureUnit.celsius);
    }
  }
}