import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/pr.dart';

abstract class PrStorage{
  Future<List<Pr>> load();
}

class AssetPrStorage extends PrStorage{
  @override
  
  Future<List<Pr>> load() async{
    final jsonContent = await rootBundle.loadString("assets/database/pr.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Pr.fromJson(e)).toList();
  }
}