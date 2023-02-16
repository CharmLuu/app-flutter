import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>['1', '2', '3', '4', '5', '6'];

class CateHomepage extends StatelessWidget {
  const CateHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text(
            'Sữa bột bé thích',
            style: PrimaryFont.fontSecond(16).copyWith(color: colorTheme),
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.only(left: 20),
            // child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: <Widget>[
            //     Container(
            //       padding: EdgeInsets.only(right: 20),
            //       child: Column(
            //         children: [
            //           Container(
            //             width: 200,
            //             color: Colors.purple[600],
            //             child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //           ),
            //           Container(
            //             width: 200,
            //             color: Colors.purple[500],
            //             child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       padding: EdgeInsets.only(right: 20),
            //       child: Column(
            //         children: [
            //           Container(
            //             width: 200,
            //             color: Colors.purple[600],
            //             child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //           ),
            //           Container(
            //             width: 200,
            //             color: Colors.purple[500],
            //             child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20, bottom: 20),
                          height: 50,
                          width: 200,
                          color: colorSecond,
                          child: Text(
                            '${entries[index]}',
                            style: const TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
