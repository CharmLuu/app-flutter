

import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../checkout.dart';
import 'account_edit.dart';
import 'components/recently_order.dart';
import 'order.dart';
import 'wishlist.dart';

class AccountDashBoard extends StatelessWidget {
  AccountDashBoard({super.key});

  final List<SidebarAcc> sidebaracc = [
    SidebarAcc(
      label: 'My account',
      urlPage: '$CheckoutPage',
    ),
    SidebarAcc(
      label: 'My orders',
      urlPage: '$OrderPage',
    ),
    SidebarAcc(
      label: 'My wishlist',
      urlPage: '$WishlistPage',
    ),
    SidebarAcc(
      label: 'Address book',
      urlPage: '$CheckoutPage',
    ),
    SidebarAcc(
      label: 'Account infomation',
      urlPage: '$CustomerAccountEdit',
    ),
    SidebarAcc(
      label: 'My product review',
      urlPage: '$CheckoutPage',
    ),
    SidebarAcc(
      label: 'Newsletter subscriptions',
      urlPage: '$CheckoutPage',
    ),
  ];

  final List<AddressAcc> addacc = [
    AddressAcc(
      textTitle: 'Default Billing Address',
      text: 'Dung Pham \n Ecommage \n 157 Xã Đàn \n Quận Đống Đa \n 0976123456',
    ),
    AddressAcc(
      textTitle: 'Default Shipping Address',
      text: 'Dung Pham \n Ecommage \n 157 Xã Đàn \n Quận Đống Đa \n 0976123456',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png",),
                  radius: 30,
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dung Pham',
                        style: PrimaryFont.bold(14),
                      ),
                      Text('dungpt@ecommage.com'),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            margin: EdgeInsets.only(right: 5),
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('$CustomerAccountEdit');
                              }, 
                              child: Text(
                                'Edit',
                                style: PrimaryFont.fontSize(12),
                              ),
                              style: OutlinedButton.styleFrom(
                                primary: colorTheme,
                                side: BorderSide(color: colorGreyLight2),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              )
                            ),
                          ),
                          // Container(
                          //   height: 30,
                          //   child: OutlinedButton(
                          //     onPressed: () {}, 
                          //     child: Text(
                          //       'Change Password',
                          //       style: PrimaryFont.fontSize(12),
                          //     ),
                          //     style: OutlinedButton.styleFrom(
                          //       primary: colorTheme,
                          //       side: BorderSide(color: colorGreyLight2),
                          //       shape: const RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.all(Radius.circular(20))
                          //       ),
                          //     )
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              )          
            ],
          ),
        ).p(),
        Divider(
          height: 0,
          thickness: 3,
          color: colorGreyLight1,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: Text(
                  'Tài khoản'.toUpperCase(),
                  style: PrimaryFont.bold(14),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...sidebaracc
                ],
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address Book '.toUpperCase(),
                    style: PrimaryFont.bold(14),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('Manage Addresses'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft,
                      primary: colorTheme
                    )
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    ...addacc
                  ],
                ),
              ),
            )
          ],
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Ordered'.toUpperCase(),
                    style: PrimaryFont.bold(14),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('View all'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft,
                      primary: colorTheme
                    )
                  )
                ],
              ).pxBase(),
              RecentlyOrders(),
            ]
          ),
        )
      ],
    );
  }
}

class SidebarAcc extends StatelessWidget {
  final String label;
  final String urlPage;
  SidebarAcc({Key? key, required this.label, required this.urlPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(urlPage);
      },
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        shape: Border(
          bottom: BorderSide(color: colorGreyLight1)
        ),
        title: Text(
          label,
          style: PrimaryFont.semi(14),
        ),
        trailing: Icon(
          FontAwesomeIcons.angleRight,
          color: colorBlack,
          size: 14,
        )
      ),
    );
  }
}

class AddressAcc extends StatelessWidget {
  final String text;
  final String textTitle;
  AddressAcc({Key? key, required this.text, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0,0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
            style: PrimaryFont.bold(14),
          ),
          SizedBox(height: 5,),
          Text(text),
          TextButton(
            onPressed: () {}, 
            child: Text(
              'Edit',
              style: TextStyle(
                decoration: TextDecoration.underline,
              )
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft,
              primary: colorTheme
            )
          )
        ],
      ),
    );
  }
}
