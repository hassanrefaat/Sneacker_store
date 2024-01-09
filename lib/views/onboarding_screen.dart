import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../features/helper.dart';
import '../utils/styles.dart';
import '../widgets/build_onboarding_item.dart';
import '../widgets/custom_button.dart';
import '../widgets/nav.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        title: 'WELCOME TO\nNIKE',
        image: 'assets/images/sneakers.png',
        body: '',
        text: ''),
    BoardingModel(
        title: '',
        image: 'assets/images/sneakers2.png',
        body: 'Let’s Start Journey With Nike',
        text: 'Smart, Gorgeous & Fashionable Collection Explore Now'),
    BoardingModel(
        title: '',
        body: 'You Have the Power To',
        image: 'assets/images/sneakers3.png',
        text: 'There Are Many Beautiful And Attractive Plants To Your Room'),
  ];
  bool isLast = false;

  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {}
    });
    navigateAndFinish(
      context,
      Login_Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1483C2),
        elevation: 0,
        actions: [
          TextButton(onPressed: ()
          {
            navigateAndFinish(context, Login_Screen());
          }, child: Text('Skip',
          style: Styles.style14,))
        ],
      ),

      backgroundColor: Color(0xFF1483C2),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(

          child: Column(
            children: [

              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardController,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              // const SizedBox(height: 20.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: boardController,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.orangeAccent,
                        activeDotColor: Colors.white,
                        dotHeight: 7.0,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5.0,
                      ),
                      count: boarding.length,
                    ),

                    // const Spacer(),
                    // FloatingActionButton(
                    //   onPressed: () {
                    //     if (isLast) {
                    //       submit();
                    //     }
                    //
                    //     boardController.nextPage(
                    //         duration: const Duration(
                    //           milliseconds: 750,
                    //         ),
                    //         curve: Curves.fastLinearToSlowEaseIn);
                    //   },
                    //   child: const Icon(Icons.arrow_forward),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Next',
                onTap: () {
                  if (isLast) {
                    submit();
                  }
                  boardController.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
