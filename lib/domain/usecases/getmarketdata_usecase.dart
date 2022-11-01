import '../entities/entitie.dart';
import '../repo/getmarket_domain.dart';

class GetMarketStack{
  final GetMarketRepo getMarketRepo;

  GetMarketStack({required this.getMarketRepo});



  Future<List<Data>>  getdata ()async{
    return await getMarketRepo.getMarketList();
}
}