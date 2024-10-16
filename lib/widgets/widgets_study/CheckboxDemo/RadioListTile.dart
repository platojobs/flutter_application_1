import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/generated/l10n.dart';
import 'package:weather_icons/weather_icons.dart';
enum Seasons{
  spring,
  summer,
  autumn,
  winter,
}

class RadioListTileDemo extends StatefulWidget {

  const RadioListTileDemo({super.key});

  @override
  State<RadioListTileDemo> createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
  late Seasons season = Seasons.spring;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTile-${S.of(context).season}"),
      ),
      body: RadioListTileTT(
        season: season,
        onChangeed: (valuse){
          debugPrint("$valuse");
          setState(() {
            season = valuse!;
          });
        },
      )
    );
  }
}

class RadioListTileTT extends StatelessWidget {
  const RadioListTileTT({super.key, this.season = Seasons.spring, this.onChangeed});
  final Seasons season;
  final ValueChanged<Seasons?>? onChangeed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RadioListTile(
            value: Seasons.spring,
            title: Text(S.of(context).spring),
            subtitle: Text(S.of(context).spring),
            secondary: BoxedIcon(WeatherIcons.sunrise),
            groupValue: season,
            onChanged: (value) {
              onChangeed!(value);
            },
          ),
          RadioListTile(
            value: Seasons.summer,
            title: Text(S.of(context).summer),
            subtitle: Text(S.of(context).summer),
            secondary: BoxedIcon(WeatherIcons.rain),
            groupValue: season,
            onChanged: (value) {
              onChangeed!(value);
            },
          ),
          RadioListTile(
            value: Seasons.autumn,
            title: Text(S.of(context).autumn),
            subtitle: Text(S.of(context).autumn),
            secondary: BoxedIcon(WeatherIcons.cloudy_windy),
            groupValue: season,
            onChanged: (value) {
              onChangeed!(value);
            },
          ),
          RadioListTile(
            value: Seasons.winter,
            title: Text(S.of(context).winter),
            subtitle: Text(S.of(context).winter),
            secondary: BoxedIcon(WeatherIcons.snow),
            groupValue: season,
            onChanged: (value) {
              onChangeed!(value);
            },
          ),
        ],
      ),
    );
  }
}
