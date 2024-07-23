




import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({super.key,@required this.child,this.keepAlive = true});

  final Widget? child;
  final bool keepAlive;

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper> with AutomaticKeepAliveClientMixin {
  @override
    build(BuildContext context) {
    return widget.child??const Text("❎");
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => widget.keepAlive;

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    // TODO: implement didUpdateWidget
    if (oldWidget.keepAlive != widget.keepAlive) {
      updateKeepAlive();
    }

    super.didUpdateWidget(oldWidget);
  }


}


