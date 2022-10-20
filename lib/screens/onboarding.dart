// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/helpers/constants.dart';

import 'home.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, right: 25, left: 25, bottom: 15),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 20,
              ),
              Image.asset(
                'assets/onboarding.png',
                height: screenHeight / 2,
              ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Container(
                width: screenWidth / 1.5,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kContainer,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Easily Travel From \nYour Pocket',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Easily plan, manage and \norder your trip, and journey \nwith Safari',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: kContainerText,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                          activeDotColor: kBlue,
                          dotColor: kContainerText,
                          spacing: 15),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 25, right: 25, bottom: 5),
                              primary: kBlue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Scrolled extends StatelessWidget {
//   const Scrolled({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: const [
//         Text(
//           'Easily Travel From \nYour Pocket',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           'Easily plan, manage and \norder your trip, and journey \nwith Safari',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 12,
//             color: kContainerText,
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }
// }
// Expanded(
//   child: PageView(
//     controller: controller,
//     children: const [Scrolled(), Scrolled(), Scrolled()],
//   ),
// ),
