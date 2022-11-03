import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/widget/header.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: const Color.fromARGB(165, 13, 21, 82),
        toolbarHeight: 75,
        title: const Text("About"),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/',
                    );
                  },
                  child: Builder(builder: (context) {
                    return const Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 247, 248, 249),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
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
                  },
                  child: const Text(
                    'User',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 247, 248, 249),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1.627907,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
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
                  },
                  child: const Text(
                    'Land Inspector',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 247, 248, 249),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1.627907,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 14, right: 140, top: 14, bottom: 14),
                child: GestureDetector(
                  onTap: () {
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
                  },
                  child: const Text(
                    'Contract Owner',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 247, 248, 249),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1.627907,
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(14.0),
              //   child: IconButton(
              //     onPressed: () {
              //       launchUrl(
              //           "https://github.com/saurabh-m-w/Blockchain-Based-Property-Registration");
              //     },
              //     iconSize: 30,
              //     icon: Image.asset(
              //       'assets/github-logo.png',
              //       color: Colors.black,
              //       width: 60.0,
              //       height: 60.0,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
      // body: SingleChildScrollView(
      //     child: Column(children: const <Widget>[
      //   // Top Header
      //   Material(
      //     color: Color.fromARGB(165, 13, 21, 82),
      //     elevation: 10,
      //     child: Padding(
      //       padding:
      //           EdgeInsets.only(left: 150.0, top: 15, right: 50, bottom: 15),
      //       child: HeaderWidget(),
      //     ),
      //   ),
      //   // in the middle of the p,
      //   // This trailing comma makes auto-formatting nicer for build methods.
      // ]))
    );
  }
}
