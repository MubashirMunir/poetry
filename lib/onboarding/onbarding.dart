import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poetry/module/onboardingmodule.dart';
import 'package:poetry/screens/Splash_screen.dart';

class omboarding extends StatefulWidget {
  const omboarding({super.key});
  State<omboarding> createState() => _omboardingState();
}

class _omboardingState extends State<omboarding> {
  @override
  late PageController _controllerTest;

  var currentIndex = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          backgroundColor: Colors.white,
          actions: [
            TextButton(
                child: const Text(
                  "skip",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () => {
                      if (currentIndex == screens.length - 1)
                        {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => ss()))
                        }
                    })
          ],
        ),
        body: PageView.builder(
            onPageChanged: (int index) => {currentIndex = index},
            controller: _controller,
            itemCount: screens.length,
            itemBuilder: (
              context,
              index,
            ) {
              return Column(children: [
                Image.asset("assets/images/pic.jpg"),
                InkWell(
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      if (index == screens.length - 1) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => ss()));
                      }
                      _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    }),
              ]);
            }));
  }
}
