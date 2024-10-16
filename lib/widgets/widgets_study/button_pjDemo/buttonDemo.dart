import 'package:flutter/material.dart';
import 'package:flutter_pprotapp/widgets/widgets_study/button_pjDemo/singleChoiceSegment.dart';

import 'PJButtonBackGroundColor.dart';
import 'multipleChoiceSegMent.dart';

class Buttondemo extends StatefulWidget {
  const Buttondemo({super.key});

  @override
  State<Buttondemo> createState() => _ButtondemoState();
}

class _ButtondemoState extends State<Buttondemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮组件"),
      ),
      body: Center(
        child: Column(
          children: [
            SingleChoiceSegment(
              titles: const {"近一月", "近一周", "近三天"},
              defaultSelect: '近一月',
              onSelectionChanged: (value) {
                debugPrint("选择了:${value}");
              },
            ),
            MultipleChoiceSegMent(
                titles: const {"近一月", "近一周", "近三天"},
                defaultSelect: {'近一月',"近一周"},
                onSelectionChanged: (value) {
                  debugPrint("多选-选择了:${value}");
                }),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: _onPressed, child: const Text("ElevatedButton")),
            ),
            FilledButton(
                onPressed: _onPressed, child: const Text("FilledButton")),
            FilledButton.tonal(
                onPressed: _onPressed, child: const Text("FilledButton.tonal")),
            FilledButton.tonalIcon(
                onPressed: _onPressed,
                label: const Text("FilledButton.tonalIcon")),
            OutlinedButton(
                onPressed: _onPressed, child: const Text("OutlinedButton")),
            TextButton(onPressed: _onPressed, child: const Text("TextButton")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Colors.blue),
                  child: IconButton(
                    onPressed: _onPressed,
                    iconSize: 30,
                    icon: const Icon(Icons.import_contacts),
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: _onPressed,
                    icon: const Icon(Icons.import_contacts),
                    iconSize: 30,
                    style: ButtonStyle(
                        backgroundColor:
                            PJButtonBackGroundColor(context, Colors.blue),
                        foregroundColor:
                            PJButtonBackGroundColor(context, Colors.white)
                    )
                ),
              ],
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width - 30,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       PJFilledButton(
            //         onPressed: () {
            //           debugPrint("置顶");
            //         },
            //         title: "置顶",
            //         bgColors: ColorUtil.hexColorString("#F3AC31"),
            //         fogColors: Colors.white,
            //       ),
            //       PJFilledButton(
            //           onPressed: () {
            //             debugPrint("优先推广了");
            //           },
            //           title: "优先推广",
            //           bgColors: ColorUtil.hexColorString("#469DBF"),
            //           fogColors: Colors.white),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _onPressed,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          label: const Text("FloatingActionButton.extended")),
    );
  }

  void _onPressed() {}
}

class PJFilledButton extends StatelessWidget {
  const PJFilledButton(
      {super.key,
      required this.title,
      required this.bgColors,
      required this.fogColors,
      this.onPressed});
  final String title;
  final Color bgColors;
  final Color fogColors;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: PJButtonBackGroundColor(context, bgColors),
            foregroundColor: PJButtonBackGroundColor(context, fogColors)),
        child: Text(title),
      ),
    );
  }
}
