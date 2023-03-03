

import 'package:flutter/material.dart';

import '../components/header2.dart';
import '../components/pr_list.dart';
import '../theme.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});
  final String _date = '23/02/2023';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderType2(data: 'Track Order'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          decoration: BoxDecoration(
                            color: colorGreyLight1,
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Text('Pending'),
                        ),
                        TextButton(
                          onPressed: () {}, 
                          child: Text('Reorder')
                        )
                      ],
                    ),

                    Text('Ngày đặt hàng: $_date'),
                    SizedBox(height: 20,),
                    PrList(),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: colorGreyLight1,
                        boxShadow: [
                          BoxShadow(
                            color: colorBlack.withOpacity(0.1),
                            blurRadius: 10,
                              offset: Offset(0,0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(11)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text('Subtotal')
                              ),
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text(
                                  '780.000đ',
                                  style: PrimaryFont.bold(16),
                                  textAlign: TextAlign.right,
                                )
                              ),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text('Shipping')
                              ),
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text(
                                  '30.000đ',
                                  style: PrimaryFont.bold(16),
                                  textAlign: TextAlign.right,
                                )
                              ),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text('Total')
                              ),
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Text(
                                  '810.000đ',
                                  style: PrimaryFont.bold(16),
                                  textAlign: TextAlign.right,
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ).p(),
              )
            )
          ],
        ),
      ),
    );
  }
}