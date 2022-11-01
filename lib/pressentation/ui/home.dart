import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged
          , builder: (context, snapshot) {
        return snapshot.data == ConnectivityResult.none ? Center(
          child: Text("not have internet"),):Container();
      }),
    );
  }
}

















