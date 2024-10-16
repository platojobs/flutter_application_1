
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';
class SocketRoute extends StatefulWidget {
  const SocketRoute({super.key});

  @override
  State<SocketRoute> createState() => _SocketRouteState();
}

class _SocketRouteState extends State<SocketRoute> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _requst(),
        builder: (context,snapshot){
             return Text(snapshot.data.toString());
        });
  }

  _requst()async{
    var socket = await Socket.connect("baidu.com",80);
    socket.writeln("GET / HTTP/1.1");
    socket.writeln("Host:www.baidu.com");
    socket.writeln("Connection:close");
    socket.writeln("Content-Type: text/html");

    socket.writeln();
    await socket.flush();
    String _reposne = await utf8.decoder.bind(socket).join();
    debugPrint(_reposne);
    await socket.close();
    return _reposne;
  }


}

