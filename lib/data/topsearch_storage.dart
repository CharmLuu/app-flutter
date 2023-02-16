import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/topsearch_model.dart';

abstract class TopsearchStorage{
  Future<List<Topsearch>> load();
}

class AssetTopsearchStorage extends TopsearchStorage{
  @override
  
  Future<List<Topsearch>> load() async{
    // if(kDebugMode){
    //    await Future.delayed(Duration(seconds: 3));
    // }

    final jsonContent = await rootBundle.loadString("assets/database/topsearch.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Topsearch.fromJson(e)).toList();
  }
}