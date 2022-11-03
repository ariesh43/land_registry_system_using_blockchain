import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import 'package:web3dart/web3dart.dart';
import '../constant/utils.dart';

class LeftDes extends StatefulWidget {
  @override
  LeftDescription createState() => LeftDescription();
}

class LeftDescription extends State<LeftDes> {
  // const LeftDescription({Key? key}) : super(key: key);
  LeftDescription() {}
  late final Future<String> _future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getRate();
  }

  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // title
//         const FittedBox(
//           child: Text('''Land
// Registration Using
// Blockchain''',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: Color(0xff28313b),
//                 fontSize: 50,
//                 fontWeight: FontWeight.w400,
//                 fontStyle: FontStyle.normal,
//                 //letterSpacing: 1.5,
//               )),
//         ),
          // Description

          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // button
              InkWell(
                mouseCursor: SystemMouseCursors.basic,
                onTap: () {},
                child: Container(
                    width: 200,
                    height: 57,
                    child: Center(
                        child: FutureBuilder(
                            future: _future,
                            builder: (BuildContext context,
                                AsyncSnapshot<String> text) {
                              if (text.hasData) {
                                return SelectableText(
                                    text.data.toString() + " INR/ETH",
                                    // showCursor: true,
                                    cursorWidth: 5,
                                    toolbarOptions: const ToolbarOptions(
                                        copy: true, selectAll: false),
                                    cursorRadius: const Radius.circular(5),
                                    cursorColor: Colors.yellow,
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xffffffff),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2,
                                    ));
                              }
                              return const CircularProgressIndicator(
                                backgroundColor: Colors.pink,
                              );
                            })
                        // Text("INR/ETH",
                        //     style: TextStyle(
                        //       fontFamily: 'Poppins',
                        //       color: Color(0xffffffff),
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w400,
                        //       fontStyle: FontStyle.normal,
                        //       letterSpacing: 2,
                        //     )),
                        ),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8))),
              ),
              //
              // const SizedBox(width: 40),
              // MouseRegion(
              //   onHover: (PointerHoverEvent evt) {
              //     appContainer?.style.cursor = 'select';
              //   },
              //   onExit: (PointerExitEvent evt) {
              //     appContainer?.style.cursor = 'default';
              //   },
              //   child: Row(
              //     children: [
              //       const SizedBox(
              //         width: 34,
              //         height: 34,
              //         child: Icon(Icons.play_circle_fill),
              //       ),
              //       const SizedBox(
              //         width: 10,
              //       ),
              //       FutureBuilder(
              //           future: getRate(),
              //           builder:
              //               (BuildContext context, AsyncSnapshot<String> text) {
              //             if (text.hasData) {
              //               return Text(text.data.toString(),
              //                   style: const TextStyle(
              //                     fontFamily: 'Poppins',
              //                     color: Color(0xff47afc9),
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.w400,
              //                     fontStyle: FontStyle.normal,
              //                     letterSpacing: 2,
              //                   ));
              //             }
              //             return const CircularProgressIndicator();
              //           })
              //     ],
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

Future<String> getRate() async {
  try {
    await getEthToInr();
    print(ethToInr.toString());
    return ethToInr.toStringAsFixed(2).toString();
  } catch (ex) {
    // return ex.toString();
    return "329172.649";
  }
}
