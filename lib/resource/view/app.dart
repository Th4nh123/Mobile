import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/imgs/onboarding-free.png"),
                      fit: BoxFit.fill))),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: MediaQuery.of(context).size.height * 0.15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/imgs/now-logo.png", scale: 3.5),
                      const SizedBox(height: 20),
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 3,
                              child: const FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text("Now UI",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 3,
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text("Flutter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                              ))
                        ],
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Designed By",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3)),
                          const SizedBox(width: 5.0),
                          Image.asset("assets/imgs/invision-white-slim.png",
                              scale: 7.0)
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Coded By",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3)),
                          const SizedBox(width: 10.0),
                          Image.asset("assets/imgs/creative-tim.png",
                              scale: 7.0),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          disabledForegroundColor: Colors.red.withOpacity(1),
                          minimumSize: const Size(88, 36),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 16, bottom: 16),
                            child: Text("GET STARTED",
                                style: TextStyle(fontSize: 12.0))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
