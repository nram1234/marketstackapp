import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/datasource/remote_data_source.dart';
import 'pressentation/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    RemoteDataSource  remoteDataSource=RemoteDataSource();
    remoteDataSource.getMarketStack();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
