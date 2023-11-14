import 'dart:convert';
import 'package:get/get.dart';
import 'package:udemy/model/news_model.dart';

class NewsServices extends GetConnect implements GetxService {
  Future<NewsApi> getNewsData() async {
    var response = await get(
       'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=a9c0b03781794dfe911fa77e728ceb1a');
    // var response = await get('https://service-m9yegcn9-1311248022.sh.apigw.tencentcs.com/release/board');
    // print('response=> ${response}');
    // print('response body=> ${response.body}');
    // print(json.decode(response.body));
    return NewsApi.fromJson(response.body);
  }
}
//
// import 'dart:convert';
// import 'package:get/get.dart';
//
// class NewsServices extends GetConnect implements GetxService {
//   void getNewsData() async {
//     var response = await get('https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=a9c0b03781794dfe911fa77e728ceb1a');
//     // var response = await get('https://service-m9yegcn9-1311248022.sh.apigw.tencentcs.com/release/board');
//     print(response.body);
//
//     // 使用 ?.isNotEmpty 来安全地访问 isNotEmpty 属性
//     if (response.bodyString?.isNotEmpty == true) {
//       var jsonData = json.decode(response.body!);
//       print(jsonData);
//     } else {
//       print('No data or null response body');
//     }
//   }
// }
