import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  getMarketStack();


}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  getMarketStack() async{
    try{

      var respanse=await Dio().get("path");


    }catch(e){}
  }

}