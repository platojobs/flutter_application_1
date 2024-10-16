import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';


class CarouselSliderDemo extends StatefulWidget {
  const CarouselSliderDemo({super.key});

  @override
  State<CarouselSliderDemo> createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];
  final imageurls = ["https://img1.baidu.com/it/u=681018487,3477761264&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
  "https://img1.baidu.com/it/u=2845147079,1727988500&fm=253&fmt=auto&app=120&f=JPEG?w=804&h=500",
    "https://img1.baidu.com/it/u=1108414720,3614659630&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
    "https://img2.baidu.com/it/u=1028011339,1319212411&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313",

  ];

  late CarouselSliderController _sliderController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CarouselSliderDemo"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 300,
            child: CarouselSlider.builder(
              unlimitedMode: true,
              autoSliderDelay: Duration(milliseconds: 1500),
              controller: _sliderController,
              slideBuilder: (index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Image.network(imageurls[index],fit: BoxFit.cover,),
                );
              },
             //slideTransform: CubeTransform(),
              slideIndicator: CircularSlideIndicator(
                padding: EdgeInsets.only(bottom: 32),
                indicatorBorderColor: Colors.green,
                indicatorBackgroundColor: Colors.white,
                currentIndicatorColor: Colors.green
              ),
              itemCount: imageurls.length,
              initialPage: 0,
              enableAutoSlider: true,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 32),
          //   child: Align(
          //     child: ConstrainedBox(
          //       constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           IconButton(
          //             iconSize: 48,
          //             icon: Icon(Icons.skip_previous),
          //             onPressed: () {
          //               _sliderController.previousPage();
          //             },
          //           ),
          //           IconButton(
          //             iconSize: 64,
          //             icon: Icon(
          //               _isPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
          //             ),
          //             onPressed: () {
          //               setState(
          //                     () {
          //                   _isPlaying = !_isPlaying;
          //                   _sliderController.setAutoSliderEnabled(_isPlaying);
          //                 },
          //               );
          //             },
          //           ),
          //           IconButton(
          //             iconSize: 48,
          //             icon: Icon(Icons.skip_next),
          //             onPressed: () {
          //               _sliderController.nextPage();
          //             },
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
