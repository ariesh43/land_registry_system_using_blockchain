import 'package:flutter/material.dart';
import 'package:land_registration/widget/header.dart';
import 'package:land_registration/widget/homePageDecription.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Top Header
            const Material(
              color: Color.fromARGB(165, 13, 21, 82),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 150.0, top: 15, right: 50, bottom: 15),
                child: HeaderWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 650.0, top: 0, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  LeftDes(),
                  // Center(
                  //   child: Container(
                  //     width: 600,
                  //     height: 804,
                  //     child: SvgPicture.asset(
                  //       'assets/background_svg.svg',
                  //       height: 20.0,
                  //       width: 20.0,
                  //       allowDrawingOutsideViewBox: true,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250, top: 0, right: 250),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 2.5,
                          color: const Color.fromARGB(255, 228, 177, 118))),
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAnimatedContainer('Contract Owner', () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const CheckPrivateKey(
                        //               val: "owner",
                        //             )));
                        Navigator.of(context).pushNamed(
                          '/login',
                          arguments: "owner",
                        );
                      }),
                      CustomAnimatedContainer('Land Inspector', () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const CheckPrivateKey(
                        //               val: "LandInspector",
                        //             )));
                        Navigator.of(context).pushNamed(
                          '/login',
                          arguments: "LandInspector",
                        );
                      }),
                      CustomAnimatedContainer('User', () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const CheckPrivateKey(
                        //               val: "UserLogin",
                        //             )));
                        Navigator.of(context).pushNamed(
                          '/login',
                          arguments: "UserLogin",
                        );
                      }),
                    ],
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
