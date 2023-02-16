import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class ProductShortDes extends StatefulWidget {
  const ProductShortDes({super.key});

  @override
  State<ProductShortDes> createState() => _ProductShortDesState();
}

class _ProductShortDesState extends State<ProductShortDes> {
  String descText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  String shortText =
      "Deal không áp dụng đồng thời với bất kỳ CTKM & Tích luỹ khác";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReadMoreText(
          descText,
          trimLines: 2,
          trimLength: 50,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: colorTheme),
        ),
        TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              title: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Chi tiết Deal',
                      style: PrimaryFont.fontSecond(18),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: -10,
                    width: 30,
                    height: 30,
                    child: InkWell(
                        onTap: () => Navigator.pop(context, 'Cancel'),
                        child: const Icon(Icons.close)),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Deal không áp dụng đồng thời với bất kỳ CTKM & Tích luỹ khác \n Không áp dụng Phiếu quà tặng/ Mã giảm giá theo ngành hàng (xem chi tiết)',
                    style: PrimaryFont.fontSize(14).copyWith(height: 1.5),
                  ),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
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
                  style: const TextStyle(
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
                      const Icon(
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
