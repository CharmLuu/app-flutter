import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import '../../components/header2.dart';
import '../order_detail.dart';

class OrderPage extends StatelessWidget {
  OrderPage({super.key});
  List<orderItem> o_items = [
    orderItem(
      status: 'Pending',
      id: '000000029',
      date: '2/23/23',
      total: '1.277.000đ'
    ),
    orderItem(
      status: 'Shipping',
      id: '000000030',
      date: '2/23/23',
      total: '1.285.000đ'
    ),
    orderItem(
      status: 'Completed',
      id: '000000030',
      date: '2/23/23',
      total: '1.280.000đ'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderType2(data: 'My Orders'),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: o_items.length,
                  itemBuilder:(context, index) {
                    final _date = o_items[index].date;
                    return Container(
                      padding: EdgeInsets.all(20),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                            decoration: BoxDecoration(
                              color: colorGreyLight1,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Text(o_items[index].status),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Ngày đặt hàng:  ${_date}',
                            style: TextStyle(
                              color: colorGrey1
                            ),
                          ),
                          SizedBox(height: 7,),
                          Text(
                            o_items[index].total,
                            style: PrimaryFont.bold(16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              OutlinedButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OrderDetailPage()),
                                  );
                                },
                                child: Text('View Order'),
                                style: OutlinedButton.styleFrom(
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: Size(0, 28)
                                ),
                              ),
                              SizedBox(width: 10,),
                              ElevatedButton(
                                onPressed: (){},
                                child: Text('Reorder'),
                                style: ElevatedButton.styleFrom(
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: Size(0, 28)
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ).p()
              ),
            )
          ],
        )
      ),
    );
  }
}

class orderItem{
  final String status;
  final String id;
  final String date;
  final String total;
  orderItem({required this.status, required this.id, required this.date, required this.total});
}