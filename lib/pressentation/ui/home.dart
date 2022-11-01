import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            return snapshot.data == ConnectivityResult.none
                ? Center(
                    child: Text("not have internet"),
                  )
                : GetBuilder<HomeController>(builder: (logic) {
                    return logic.a==null?Center(child: CircularProgressIndicator(),):ListView.builder(
                        itemCount: logic.a?.length,
                        itemBuilder: (context, pos) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(children: [
                                Text("date :${logic.a?[pos].date}"),
                                Text("high :${logic.a?[pos].high}"),
                                Text("adjClose :${logic.a?[pos].adjClose}"),
                                Text("adjHigh :${logic.a?[pos].adjHigh}"),
                                Text("adjLow :${logic.a?[pos].adjLow}"),
                              Text("adjOpen :${logic.a?[pos].adjOpen}"),
                              Text("dividend :${logic.a?[pos].dividend}"),
                              Text("exchange :${logic.a?[pos].exchange}")
                              ]),
                            ),
                          );
                        });
                  });
          }),
    );
  }
}
