import 'package:flutter/material.dart';

import '../../../data/topsearch_storage.dart';
import '../../theme.dart';

final topsearchStorage = AssetTopsearchStorage();

class TopSearchHomepage extends StatelessWidget {
  const TopSearchHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CustomTitleHomepage(data: "Top tìm kiếm"),
        Container(
          padding: const EdgeInsets.all(20),
          child: TopsearchGridview(),
        ),
      ],
    );
  }
}

class TopsearchGridview extends StatelessWidget {
  const TopsearchGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: topsearchStorage.load(),
      builder: (context, snapshot) {
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

        final searchitems = snapshot.data!;
        
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemCount: searchitems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              child: Column(children: [
                Flexible(
                  flex: 6,
                  child: Image.asset(searchitems[index].thumbnail),
                ),
                
                Flexible(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(top: 5),
                    child: FittedBox(
                      child: Text(
                        searchitems[index].title,
                        style: PrimaryFont.fontSize(9),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],)
            );
          }
        );
      }
    );
  }
}