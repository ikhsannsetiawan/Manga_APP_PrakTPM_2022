import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:manga_app_2022/models/detail_model.dart';
import 'package:manga_app_2022/models/home_data_model.dart';
import 'package:manga_app_2022/models/search_result_model.dart';

String baseUrl = 'https://api.jikan.moe/v4';

Future<HomeDataModel> getHomeData({String category = "manga"}) async {
  final String fullUrl = baseUrl + "/top/manga?type=$category";
  final response = await http.get(Uri.parse(fullUrl));
  debugPrint("BaseNetwork - response : ${response.body}");
  return homeDataModelFromJson(response.body);
}

Future<SearchResultModel> getSearchResultData(String query) async {
  final String fullUrl = baseUrl + "/manga?q=$query";
  final response = await http.get(Uri.parse(fullUrl));
  debugPrint("BaseNetwork - response : ${response.body}");
  return searchResultModelFromJson(response.body);
}

Future<DetailModel> getDetail(String id) async {
  final String fullUrl = baseUrl + "/manga/$id";
  final response = await http.get(Uri.parse(fullUrl));
  return detailModelFromJson(response.body);
}