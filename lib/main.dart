import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketstackapp/domain/entities/entitie.dart';
import 'package:marketstackapp/pressentation/all_binding/home_binding.dart';

import 'data/datasource/remote_data_source.dart';
import 'data/repo/repo_base_market_remote.dart';
import 'domain/repo/getmarket_domain.dart';
import 'domain/usecases/getmarketdata_usecase.dart';
import 'pressentation/ui/home.dart';

void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      initialRoute: "/"
      ,getPages: [

      GetPage(name: "/", page: () =>
          Home(),
          binding: HomeBinding())







    ],
    );
  }
}
