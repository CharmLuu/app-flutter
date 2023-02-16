import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/product.dart';

abstract class ProductStorage{
  Future<List<Product>> load();
}

class AssetProductStorage extends ProductStorage{
  @override
  
  Future<List<Product>> load() async{
    // if(kDebugMode){
    //    await Future.delayed(Duration(seconds: 3));
    // }

    final jsonContent = await rootBundle.loadString("assets/database/product.json");
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Product.fromJson(e)).toList();
  }
}