import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class SwitchListTileDemo extends StatefulWidget {
  const SwitchListTileDemo({super.key});

  @override
  State<SwitchListTileDemo> createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {
  var switchValue1 = false;
  var switchValue2 = false;
  var switchValue3 = false;
  var switchValue4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchListTile"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            secondary: Icon(WeatherIcons.cloudy_windy),
            value: switchValue1,
            onChanged: (bool? value) {
              setState(() {
                switchValue1 = value!;
              });
            },
            title: const Text('Headline'),
            subtitle: const Text('Supporting text'),
          ),
          const Divider(height: 0),
          SwitchListTile(
            secondary: Icon(WeatherIcons.sunrise),
            value: switchValue2,
            onChanged: (bool? value) {
              setState(() {
                switchValue2 = value!;
              });
            },
            title: const Text('Headline'),
            subtitle: const Text(
                'Longer supporting text to demonstrate how the text wraps and the switch is centered vertically with the text.'),
          ),
          const Divider(height: 0),
          SwitchListTile(
            secondary: Icon(WeatherIcons.rain_wind),
            value: switchValue3,
            onChanged: (bool? value) {
              setState(() {
                switchValue3 = value!;
              });
            },
            title: const Text('Headline'),
            subtitle: const Text(
                "Longer supporting text to demonstrate how the text wraps and how setting 'SwitchListTile.isThreeLine = true' aligns the switch to the top vertically with the text."),
            isThreeLine: true,
          ),
          const Divider(height: 0),
          //自定义的switch
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(WeatherIcons.sunrise,color: Colors.orange,),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                          text: "hehehehhehhehehehhehvhehehehhehhehehehheh"
                              "hehehehhehhehehehhehheheh"
                              "ehhehhehehehhehhehehehheh",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                ),
                Switch(
                    value: switchValue4,
                    onChanged: (bool value) {
                      setState(() {
                        switchValue4 = value;
                      });
                    }),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}
