import 'package:flutter/material.dart';

import 'package:untitled/resource/data/color.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Container example"),
      // ),
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  // border: Border.all(
                  //     color: Colors.purple,
                  //     width: 10.0,
                  //     style: BorderStyle.solid),
                  image: DecorationImage(
                      image: AssetImage("assets/imgs/onboarding-free.png"),
                      fit: BoxFit.cover
                      /* cover : img adjusted by px , fill : img adjusted by percent */
                      ))),
          /* fill */
          SafeArea(
            child: Container(
                // decoration: BoxDecoration(
                //     border: Border.all(
                //         color: Colors.grey,
                //         width: 5.0,
                //         style: BorderStyle.solid)),
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Container(
                  // decoration: BoxDecoration(
                  //     border: Border.all(
                  //         color: Colors.red,
                  //         width: 5.0,
                  //         style: BorderStyle.solid)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(
                        //         color: Colors.orange,
                        //         width: 5.0,
                        //         style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            Image.asset("assets/imgs/now-logo.png", scale: 3.5),
                            const SizedBox(height: 20),
                            Container(
                                // decoration: BoxDecoration(
                                //     border: Border.all(
                                //         color: Colors.red,
                                //         width: 2.0,
                                //         style: BorderStyle.solid)),
                                child: Column(
                              children: [
                                Container(
                                    // decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         color: Colors.red,
                                    //         width: 2.0,
                                    //         style: BorderStyle.solid)),
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text("Now UI",
                                            style: TextStyle(
                                                color: NowUIColors.white,
                                                fontWeight: FontWeight.w400)))),
                                Container(
                                    // decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         color: Colors.red,
                                    //         width: 2.0,
                                    //         style: BorderStyle.solid)),
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text("Flutter",
                                          style: TextStyle(
                                              color: NowUIColors.white,
                                              fontWeight: FontWeight.w400)),
                                    ))
                              ],
                            )),
                          ],
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(
                        //         color: Colors.black,
                        //         width: 5.0,
                        //         style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         color: Colors.red,
                              //         width: 2.0,
                              //         style: BorderStyle.solid)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Designed By",
                                      style: TextStyle(
                                          color: NowUIColors.white,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.3)),
                                  const SizedBox(width: 5.0),
                                  Image.asset(
                                      "assets/imgs/invision-white-slim.png",
                                      scale: 7.0)
                                ],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Container(
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         color: Colors.red,
                              //         width: 2.0,
                              //         style: BorderStyle.solid)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("Coded By",
                                        style: TextStyle(
                                            color: NowUIColors.white,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.3)),
                                    const SizedBox(width: 10.0),
                                    Image.asset("assets/imgs/creative-tim.png",
                                        scale: 7.0),
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                          // decoration: BoxDecoration(
                          //     border: Border.all(
                          //         color: NowUIColors.buttonColor,
                          //         width: 5.0,
                          //         style: BorderStyle.solid)),
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            // decoration: BoxDecoration(
                            //     border: Border.all(
                            //         color: Colors.red,
                            //         width: 2.0,
                            //         style: BorderStyle.solid)),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                foregroundColor: NowUIColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              },
                              child: Container(
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(
                                  //         color: Colors.red,
                                  //         width: 2.0,
                                  //         style: BorderStyle.solid)),
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  child: Container(
                                    // decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         color: Colors.red,
                                    //         width: 2.0,
                                    //         style: BorderStyle.solid))),
                                    child: const Text("GET STARTED",
                                        style: TextStyle(fontSize: 12.0)),
                                  )),
                            ),
                          ))
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
