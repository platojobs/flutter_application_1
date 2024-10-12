import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  @override
  Widget buildSubTitle(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String message;
  MessageItem(this.sender, this.message);
  @override
  Widget buildTitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget buildSubTitle(BuildContext context) {
    return Text(message);
  }
}

class MlistViewWidget extends StatelessWidget {
  final items = List<ListItem>.generate(60, (index) {
    return index % 6 == 0
        ? HeadingItem('标题:$index')
        : MessageItem('发送者:$index', '留言:$index');
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubTitle(context),
          );
        });
  }
}
