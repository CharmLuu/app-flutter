import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/text_field.dart';
import '../../theme.dart';

class OrderSummary extends StatelessWidget {
  OrderSummary({super.key});

  @override

  Widget cartSummaryItem = Container(
    padding: EdgeInsets.only(bottom: 20),
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: colorGreyLight2))
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: Image.network('https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg')
        ),
        Flexible(
          flex: 6,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Bỉm tã quần Moony bé trai size L 44 miếng 9-14kg',
                    style: PrimaryFont.semi(12),
                  )
                ),
                RichText(
                text: TextSpan(
                  text: 'Số lượng: ',
                  style: PrimaryFont.fontSize(12).copyWith(
                    color: colorBlack
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '1',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      )
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: FittedBox(
            child: Text(
              '480.000 đ',
              style: PrimaryFont.semi(14),
            ),
          )
        )
      ],
    ),
  );
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      padding: EdgeInsets.only(top:20, bottom: 5, right: 20, left: 20),
      decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: [
          BoxShadow( 
            color: colorBlack.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 0),
          )
        ],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 7,
                  child: FittedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: SvgPicture.asset('assets/images/icons/order.svg'),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, right: 12),
                          child: Text(
                            'Thông tin đơn hàng',
                            style: PrimaryFont.semi(16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: FittedBox(
                    child: Text('1 sản phẩm')
                  )
                )
              ],
            ),
          ),
          cartSummaryItem,
          cartSummaryItem,
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: Text(
                    'Tổng tiền hàng',
                    style: TextStyle(
                      color: colorGrey2
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '960.000 đ',
                      style: PrimaryFont.semi(14),
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: Text(
                    'Giảm giá',
                    style: TextStyle(
                      color: colorGrey2
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '- 13.000 đ',
                      style: PrimaryFont.semi(14),
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: Text(
                    'Phí vận chuyển',
                    style: TextStyle(
                      color: colorGrey2
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '23.000 đ',
                      style: PrimaryFont.semi(14),
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: colorGreyLight2))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: ThemeTextField(data: 'Mã khuyến mãi')
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: FittedBox(
                      child: Text(
                        'Áp dụng',
                        // style: PrimaryFont.bold(16),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorTheme,
                      fixedSize: Size(context.w * 0.4, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap
                    ),
                  ),
                )
              ],
            )

          )
        ],
      ),
    );
  }
}