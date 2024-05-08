import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Location {
  String imageUrl = "";
  String name = "";
  String country = "";
  Location({required this.imageUrl, required this.name, required this.country});
}

class ParallaxFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey bkImageKey;

  ParallaxFlowDelegate(
      {required this.scrollable,
      required this.listItemContext,
      required this.bkImageKey})
      : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final sbox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: sbox);
    final vpDimention = scrollable.position.viewportDimension;
    final scroFract = (listOffset.dy / vpDimention).clamp(0.0, 1.0);
    final verAlig = Alignment(0.0, scroFract * 2 - 1);
    
    final bksize =
        (bkImageKey.currentContext!.findRenderObject() as RenderBox).size;
    final listItemsize = context.size;
    final childRect = verAlig.inscribe(bksize, Offset.zero & listItemsize);
    context.paintChild(0,
        transform:
            Transform.translate(offset: Offset(0.0, childRect.top)).transform);
  }

  @override
  bool shouldRepaint(covariant ParallaxFlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        bkImageKey != oldDelegate.bkImageKey;
  }
}

class ParallaxRecipe extends StatelessWidget {
  ParallaxRecipe({super.key});

  final locations = [
    Location(
       imageUrl:  "https://img2.baidu.com/it/u=3227619927,365499885&fm=253&fmt=auto&app=120&f=JPEG?w=938&h=500",
       name:  "HHHAAAA",
       country:  "法国"),
    Location(
       imageUrl:  "https://img0.baidu.com/it/u=2462933260,1879339806&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
       name:  "JJKKK",
       country:  "德国"),
    Location(
       imageUrl:  "https://img1.baidu.com/it/u=2512661627,2584493883&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
       name:  "LLOOPPP",
       country:  "意大利"),
    Location(
       imageUrl:  "https://img0.baidu.com/it/u=1732529670,559512920&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
       name:  "ERRTTTT",
       country:  "俄罗斯"),
    Location(
       imageUrl:  "https://img0.baidu.com/it/u=3773090653,2338589126&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
       name:  "CCCCVV",
       country:  "美国"),
    Location(
        imageUrl: "https://img0.baidu.com/it/u=2741537543,2191045466&fm=253&fmt=auto&app=138&f=JPEG?w=824&h=500",
        name:  "AZZZZ",
        country: "英国"),
    Location(
       imageUrl:  "https://img2.baidu.com/it/u=3314927134,1922961113&fm=253&fmt=auto&app=120&f=JPEG?w=891&h=500",
       name: "QQHAAAA",
       country:  "葡萄牙"),
    Location(
       imageUrl:  "https://img1.baidu.com/it/u=2417024603,942628330&fm=253&fmt=auto&app=138&f=JPEG?w=797&h=500",
       name:  "HHHAQQQ",
       country:  "西班牙"),
       Location(
       imageUrl:  "https://img0.baidu.com/it/u=1732529670,559512920&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
       name:  "ERRTTTT",
       country:  "俄罗斯"),
    Location(
       imageUrl:  "https://img0.baidu.com/it/u=3773090653,2338589126&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
       name:  "CCCCVV",
       country:  "美国"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.country,
            ),
        ],
      ),
    );
  }
}

@immutable
class LocationListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildPllBackBround(context),
              _buildGradient(),
              _buildTitleAndSubTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPllBackBround(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        bkImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          key: _backgroundImageKey,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubTitle() {
    return Positioned(
        left: 20,
        bottom: 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              country,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  //fontWeight: FontWeight.bold
                  ),
            ),
          ],
        ));
  }
}

// class Parallax extends SingleChildRenderObjectWidget {
//   const Parallax({
//     super.key,
//     required Widget background,
//   }) : super(child: background);

//   @override
//   RenderObject createRenderObject(BuildContext context) {
//     return RenderParallax(scrollable: Scrollable.of(context));
//   }

//   @override
//   void updateRenderObject(
//       BuildContext context, covariant RenderParallax renderObject) {
//     renderObject.scrollable = Scrollable.of(context);
//   }
// }

// class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

// class RenderParallax extends RenderBox
//     with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
//   RenderParallax({
//     required ScrollableState scrollable,
//   }) : _scrollable = scrollable;

//   ScrollableState _scrollable;

//   ScrollableState get scrollable => _scrollable;

//   set scrollable(ScrollableState value) {
//     if (value != _scrollable) {
//       if (attached) {
//         _scrollable.position.removeListener(markNeedsLayout);
//       }
//       _scrollable = value;
//       if (attached) {
//         _scrollable.position.addListener(markNeedsLayout);
//       }
//     }
//   }

//   @override
//   void attach(covariant PipelineOwner owner) {
//     super.attach(owner);
//     _scrollable.position.addListener(markNeedsLayout);
//   }

//   @override
//   void detach() {
//     _scrollable.position.removeListener(markNeedsLayout);
//     super.detach();
//   }

//   @override
//   void setupParentData(covariant RenderObject child) {
//     if (child.parentData is! ParallaxParentData) {
//       child.parentData = ParallaxParentData();
//     }
//   }

//   @override
//   void performLayout() {
//     size = constraints.biggest;

//     // Force the background to take up all available width
//     // and then scale its height based on the image's aspect ratio.
//     final background = child!;
//     final backgroundImageConstraints =
//         BoxConstraints.tightFor(width: size.width);
//     background.layout(backgroundImageConstraints, parentUsesSize: true);

//     // Set the background's local offset, which is zero.
//     (background.parentData as ParallaxParentData).offset = Offset.zero;
//   }

//   @override
//   void paint(PaintingContext context, Offset offset) {
//     // Get the size of the scrollable area.
//     final viewportDimension = scrollable.position.viewportDimension;

//     // Calculate the global position of this list item.
//     final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
//     final backgroundOffset =
//         localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

//     // Determine the percent position of this list item within the
//     // scrollable area.
//     final scrollFraction =
//         (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

//     // Calculate the vertical alignment of the background
//     // based on the scroll percent.
//     final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

//     // Convert the background alignment into a pixel offset for
//     // painting purposes.
//     final background = child!;
//     final backgroundSize = background.size;
//     final listItemSize = size;
//     final childRect =
//         verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

//     // Paint the background.
//     context.paintChild(
//         background,
//         (background.parentData as ParallaxParentData).offset +
//             offset +
//             Offset(0.0, childRect.top));
//   }
// }
