import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/brand_model.dart';


abstract class BrandStorage{
  Future<List<Brand>> load();
}

class AssetBrandStorage extends BrandStorage{
  @override
  
  Future<List<Brand>> load() async{
    final jsonContent = await rootBundle.loadString("assets/database/brand.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Brand.fromJson(e)).toList();
  }
}