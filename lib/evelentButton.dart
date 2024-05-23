import 'package:flutter/material.dart';

class MyElevatedButtonWidget extends StatelessWidget {
  const MyElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return

   

    ConstrainedBox(
  constraints: const BoxConstraints(maxWidth: double.maxFinite),
    child: Text(
      'This is a very long text that should wrap to multiple lines.',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        letterSpacing: 0.0,
        color: Colors.black,
      ),
  ),
)

      

    ;
  }
}
