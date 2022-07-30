import 'package:flutter/material.dart';

import '../constants/color.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: backgroundColor
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/img/Logo Udayana.png',height: 178.28, width: 155.83),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SPEAKING TEST",
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 0.2 * size.height,
                  decoration: BoxDecoration(
                      color: secondaryBackgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                      )
                  ),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 27),
                      padding: const EdgeInsets.all(5),
                      width: 10000,
                      child: TextButton(
                        onPressed: (){
                        },
                        child: Text(
                          "START",
                          style: Theme.of(context).textTheme.headline1?.apply(letterSpacingDelta: 0, letterSpacingFactor: 0),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius : const BorderRadius.all(Radius.circular(100)),
                        gradient: backgroundColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
