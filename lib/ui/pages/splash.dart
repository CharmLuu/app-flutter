import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_demo/ui/theme.dart';
import 'start.dart';
import 'homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = context.orientation;
    final size = MediaQuery.of(context).size;

    Widget GetStartedHeader = SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: SvgPicture.asset('assets/images/logo.svg')),
            Expanded(
                child: Column(
              children: [
                Flexible(
                  child: FittedBox(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Hello, Welcome \n',
                        style: PrimaryFont.fontSize(30).copyWith(
                          color: colorWhite,
                          fontWeight: FontWeight.w700,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'to Silent Moon',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  // width: size.width,

                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: FittedBox(
                      child: Text(
                        "Explore the app, Find some peace of mind to \n prepare for meditation.",
                        style: PrimaryFont.fontSize(16).copyWith(
                            color: const Color(0xFFEBEAEC),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFF8E97FD),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: .6,
                  child: Transform.scale(
                    scale: 1.2,
                    child: FittedBox(
                      // child: Image.asset('assets/images/bn-splash.png'),
                      child: SvgPicture.asset('assets/images/bn-splash.svg'),
                      // fit: BoxFit.cover,
                    ),
                  ),
                )),
            FractionallySizedBox(
              heightFactor: .35,
              child: GetStartedHeader,
            ),
            Align(
              alignment: const Alignment(0.0, 0.85),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('$StartPage');
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(colorSecond),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    elevation: MaterialStateProperty.all(0),
                    fixedSize:
                        MaterialStateProperty.all(Size(size.width * 0.8, 60
                            // size.height * 0.05,
                            )),
                    foregroundColor: MaterialStateProperty.all(colorBlack),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      // fontSize: size.height * 0.018,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ))),
                child: Text('Trang chủ'.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
