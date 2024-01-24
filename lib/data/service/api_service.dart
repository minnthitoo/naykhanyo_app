import 'package:dio/dio.dart';
import 'package:naykhanyo/data/model/poem_list_model.dart';

import '../model/poem_model.dart';

class APIService{

  static const String imageUrl = 'https://naykhanyo.shwehash.com';
  static const String baseUrl = 'https://naykhanyo.shwehash.com/api';
  
  final Dio _dio = Dio();

  Future<List<PoemListModel>> getPoems() async{
    var result = await _dio.get('$baseUrl/poems');
    List poems = result.data['data'] as List;
    return poems.map((json){
      return PoemListModel.fromJson(json);
    }).toList();
  }

  Future<List<PoemModel>> getPoem(int id) async{
    var result = await _dio.get('$baseUrl/poem/$id');
    List poems = result.data as List;
    return poems.map((json){
      return PoemModel.fromJson(json);
    }).toList();
  }

}