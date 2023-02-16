import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/bannersale_model.dart';

abstract class BannersaleStorage{
  Future<List<Bannersale>> load();
}

class AssetBannersaleStorage extends BannersaleStorage{
  @override
  
  Future<List<Bannersale>> load() async{
    // if(kDebugMode){
    //    await Future.delayed(Duration(seconds: 3));
    // }

    final jsonContent = await rootBundle.loadString("assets/database/bannersale.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Bannersale.fromJson(e)).toList();
  }
}