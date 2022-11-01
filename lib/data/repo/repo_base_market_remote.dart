import 'package:marketstackapp/domain/entities/entitie.dart';

import '../../domain/repo/getmarket_domain.dart';
import '../datasource/remote_data_source.dart';

class RepoBaseMarketRemot implements GetMarketRepo{
  BaseRemoteDataSource baseRemoteDataSource;

  RepoBaseMarketRemot({required this.baseRemoteDataSource});

  @override
  Future<List<Data>> getMarketList() async{
return await baseRemoteDataSource.getMarketStack();
  }

}