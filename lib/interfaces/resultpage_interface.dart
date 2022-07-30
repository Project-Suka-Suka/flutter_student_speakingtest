import 'package:flutter/material.dart';

import '../constants/color.dart';

class ResultPage extends StatelessWidget {
  static const nameRoute = '/resultpage';
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: backgroundColor,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/img/Logo Udayana.png',height: 105.32, width: 92.06),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "SPEAKING TEST",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 290,
                      height: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/img/cracker.png'),
                          const SizedBox(
                            height: 23,
                          ),
                          Text(
                            "YOU HAVE COMPLETED",
                            style: Theme.of(context).textTheme.headline4?.apply(color: secondaryColor),
                          ),
                          Text(
                            "THE TEST",
                            style: Theme.of(context).textTheme.headline4?.apply(color: secondaryColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.17 *size.height,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: FloatingActionButton(
                onPressed: (){

                },
                child: const Icon(Icons.person),
                elevation: 0,
                backgroundColor: const Color.fromARGB(21, 255, 255, 255),
                highlightElevation: 0,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 0.2* size.height,
                decoration: BoxDecoration(
                    color: secondaryBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50)
                    )
                ),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 27),
                    padding: const EdgeInsets.all(5),
                    width: 100000,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text(
                        "START",
                        style: Theme.of(context).textTheme.headline1?.apply(letterSpacingDelta: 0, letterSpacingFactor: 0),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        gradient: backgroundColor
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
