import 'dart:ui';
import 'package:day3/Widgets/colors.dart';
import 'package:day3/Widgets/constant.dart';
import 'package:day3/Widgets/screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  final RiveAnimationController riveAnimationController =
      OneShotAnimation('active', autoplay: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 100,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("Spline.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          RiveAnimation.asset(
            "shapes.riv",
            controllers: [riveAnimationController],
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: const SizedBox(),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height(30),
                  const SizedBox(
                    width: 260,
                    child: Text(
                      "Learn Design & Code",
                      style: TextStyle(
                        fontSize: 70,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                  ),
                  height(15),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      "User Interface and User Experience, or UI and UX, includes all user-business interactions. Although providing a positive user experience is crucial for a number of reasons, the primary one is that it can put you ahead of your competition.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      riveAnimationController.isActive = true;
                      await buildLoginDialog();
                    },
                    child: Center(
                      child: SizedBox(
                        height: 90,
                        width: 250,
                        child: Stack(
                          children: [
                            RiveAnimation.asset(
                              "button.riv",
                              controllers: [riveAnimationController],
                            ),
                            Positioned(
                              left: 30,
                              top: 36,
                              child: Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.arrowRight,
                                    color: Colors.black,
                                  ),
                                  width(20),
                                  const Text(
                                    "Start Learning",
                                    style: TextStyle(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Center(
                      child: SizedBox(
                          width: 300,
                          child: Text(
                            "Unlimited access to 7,000+ world-class courses, hands-on projects, and job-ready certificate programs—all included in your subscription",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ))),
                  height(35)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildLoginDialog() {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: 
                  RichText(
                  textAlign: TextAlign.center,
                  
                  text:  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Login ",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                       TextSpan(
                        text: "Existing ",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.pink.shade300,
                        ),
                      ),
                      const TextSpan(
                        text: "Acc",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 234, 96, 252),
                        ),
                      ),
                       const TextSpan(
                        text: "ount",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 136, 64, 251),
                        ),
                      ),
                    ],
                  ),
                ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              content: SingleChildScrollView(
                child: Material(
                  color: Colors.transparent,
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        height(8),
                        const Text(
                          "Use email and password and continue your pending work",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        height(15),
                        TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Email")),
                        height(15),
                        TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Password")),
                        height(20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 60),
                                backgroundColor: buttoncolor),
                            onPressed: () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const ScreenModel())),
                            child: const Text(
                              " Submit",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
