import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../components/modal_title.dart';
import '../../theme.dart';

class ProductShortDes extends StatefulWidget {
  const ProductShortDes({super.key});

  @override
  State<ProductShortDes> createState() => _ProductShortDesState();
}

class _ProductShortDesState extends State<ProductShortDes> {
  String descText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  String shortText = "Deal không áp dụng đồng thời với bất kỳ CTKM & Tích luỹ khác";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ReadMoreText(
        //   descText,
        //   trimLines: 2,
        //   trimLength: 50,
        //   colorClickableText: Colors.pink,
        //   trimMode: TrimMode.Line,
        //   trimCollapsedText: 'Show more',
        //   trimExpandedText: 'Show less',
        //   moreStyle: TextStyle(
        //     fontSize: 12, 
        //     fontWeight: FontWeight.bold,
        //     color: colorTheme
        //   ),
        // ),

        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // alignment: Alignment.centerLeft
          ),
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              // elevation: 0.0,
               // title: Center(child: Text("Modal title")),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: colorWhite,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        AlertDialogTitle(data: 'Chi tiết Deal'),
                        Text(
                          'Deal không áp dụng đồng thời với bất kỳ CTKM & Tích luỹ khác \n Không áp dụng Phiếu quà tặng/ Mã giảm giá theo ngành hàng (xem chi tiết)',
                          style: PrimaryFont.fontSize(14).copyWith(
                            height: 1.5
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        )
                      ],
                    )
                  ), 
                ],
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: Text(
                  shortText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: colorBlack,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          'Xem chi tiết',
                          style: PrimaryFont.bold(14).copyWith(
                            color: colorTheme,
                          ),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.angleRight,
                        size: 14,
                        color: colorTheme,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}