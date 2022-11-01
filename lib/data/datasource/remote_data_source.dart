import 'package:dio/dio.dart';

import '../../core/utilits/ccontstances.dart';
import '../../domain/entities/entitie.dart';
import '../models/entitie_model.dart';

abstract class BaseRemoteDataSource {
  Future<List<Data>> getMarketStack();
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<List<Data>> getMarketStack() async {
    try {
      var response = await Dio().get(
          "${AppConstance.baseUrl}access_key=${AppConstance.appKey}${AppConstance.allUrl}");

      List<Data> a = List<Data>.from(
          response.data["data"].map((e) => EntitieModel.fromJson(e)));
    return a;
    } catch (e) {
      return [];
    }

  }
}
