import 'package:app_demo/ui/pages/homepage/block_title.dart';
import 'package:app_demo/ui/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../data/topsearch_storage.dart';

final topsearchStorage = AssetTopsearchStorage();

class TopSearchHomepage extends StatelessWidget {
  const TopSearchHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // CustomTitleHomepage(data: "Top tìm kiếm"),
        SizedBox(
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: TopsearchGridview(),
            )),
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
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final searchitems = snapshot.data!;
          return MasonryGridView.count(
              crossAxisCount: 5,
              itemCount: searchitems.length,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // CircleAvatar(
                    //   backgroundImage: AssetImage(searchitems[index].thumbnail),
                    //   radius: 30
                    // ),
                    Image.asset(searchitems[index].thumbnail),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        searchitems[index].title,
                        style: PrimaryFont.fontSize(9),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              });
        });
  }
}
