

import 'package:flutter/material.dart';

import '../../data/pr_storage.dart';
import '../theme.dart';

final prStorage = AssetPrStorage();

class PrList extends StatelessWidget {
  const PrList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: prStorage.load(),
      builder:  (context, snapshot) {
        if(snapshot.hasError){
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        final product_new = snapshot.data!;
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: product_new.length,
          itemBuilder: (context, index) {
            final _qty = product_new[index].qty;
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: colorWhite,
                boxShadow: [
                  BoxShadow(
                    color: colorBlack.withOpacity(0.1),
                    blurRadius: 10,
                      offset: Offset(0,0),
                  ),
                ],
                borderRadius: BorderRadius.circular(11)
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: Image.asset(product_new[index].urlImg)
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product_new[index].name,
                            style: PrimaryFont.semi(16),
                          ),
                          SizedBox(height: 3,),
                          Text("Qty: $_qty"),
                          SizedBox(height: 7,),
                          Text(
                            product_new[index].old_price,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              // decorationColor: colorBlack,
                              // decorationStyle: TextDecorationStyle.solid,
                              color: colorGrey1
                            ),
                          ),
                          Text(
                            product_new[index].price,
                            style: PrimaryFont.bold(16),
                          ),
                          
                        ],
                      ),
                    ),
                  )
                ],
              )
            );
          },
        );
      }
    );
  }
}