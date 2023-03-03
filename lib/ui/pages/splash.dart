

import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'start.dart';

class SplashSlider extends StatefulWidget {
  const SplashSlider({super.key});

  @override
  State<SplashSlider> createState() => _SplashSliderState();
}

class _SplashSliderState extends State<SplashSlider> {
  List<spSlider> spitems = [
    spSlider(
      title: "Welcome to",
      subtitle: 'Green Garden',
      urlImg: "assets/images/splash/img1.png"
    ),
    spSlider(
      title: "Mua sắm mọi thứ",
      subtitle: 'dễ dàng',
      urlImg: "assets/images/splash/img2.png"
    ),
    spSlider(
      title: "Miễn phí",
      subtitle: 'giao hàng',
      urlImg: "assets/images/splash/img3.png"
    ),
  ];

  final bool loop = false;
  int _currentIndex = 0;
  bool inLastPage = false;
  void initState() {
    _controller = SwiperController();
    // _loop = false;
    super.initState();
  }

  Widget buildSwiper() {
    return Swiper(
      controller: _controller,
      loop: false,
      index: _currentIndex,
      onIndexChanged: (index){
        setState(() {
          _currentIndex = index;
        });

        if (index == spitems.length - 1)
          setState(() {
            inLastPage = true;
          });
          else {
            setState(() {
              inLastPage = false;
            });
          }
      },
      itemCount: spitems.length,
      itemBuilder: (context, index) {
        final itemImg = spitems[index].urlImg;
        return Column(
          children: [
            Flexible(
              flex: 1,
              child: FittedBox(
                child: Column(
                  children: [
                    Text(spitems[index].title),
                    Text(
                      spitems[index].subtitle,
                      style: PrimaryFont.semi(18).copyWith(
                        color: colorTheme
                      ),
                    ),
                  ],
                ),
              )
            ),
            Flexible(
              flex: 9,
              fit: FlexFit.tight,
              child: Container(
                padding: EdgeInsets.only(top: 15),
                width: context.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: FittedBox(
                    child: Image.asset(itemImg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  } 

  late SwiperController _controller; 

  @override
  Widget build(BuildContext context) {
    Widget buildPager() => Container(
      transform: Matrix4.translationValues(0.0, -14.0, 0.0),
      child: AnimatedSmoothIndicator(
        activeIndex: _currentIndex,
        count: spitems.length,
        effect: ExpandingDotsEffect(
          dotColor:  colorGreyLight2,
          activeDotColor: colorTheme,
          dotWidth: 6,
          dotHeight: 6,
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: context.h - 175,
              child: buildSwiper()
            ),
            buildPager(),
            SizedBox(height: 5,),
            Visibility(
              visible: !inLastPage,
              child: ElevatedButton(
                onPressed: () {
                  _controller.next(animation: true);
                }, 
                child: Text('Tiếp tục'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40)
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("$StartPage");
              }, 
              child: Text('Trang chủ'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(40)
              ),
            )
          ],
        ).p(),
      ),
    );
  }
}

class spSlider{
  String title;
  String subtitle;
  String urlImg;
  spSlider({required this.subtitle, required this.title, required this.urlImg});
}