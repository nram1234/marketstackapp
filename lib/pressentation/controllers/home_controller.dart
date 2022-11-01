import 'package:get/get.dart';

import '../../data/datasource/remote_data_source.dart';
import '../../data/repo/repo_base_market_remote.dart';
import '../../domain/entities/entitie.dart';
import '../../domain/repo/getmarket_domain.dart';
import '../../domain/usecases/getmarketdata_usecase.dart';

class HomeController extends GetxController{
  List<Data>?a;



  getData()async{
    RemoteDataSource remoteDataSource=RemoteDataSource();
    GetMarketRepo getMarketRepo=RepoBaseMarketRemot(baseRemoteDataSource: remoteDataSource);
    a=await  GetMarketStack(getMarketRepo: getMarketRepo).getdata();
   update();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}