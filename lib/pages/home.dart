import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/contant/Content.dart';
import 'package:my_portfolio/contant/Response.dart';
import 'package:my_portfolio/contant/my_flutter_app_icons.dart';
import 'package:my_portfolio/contant/textStyle.dart';

import 'package:my_portfolio/widget/profile_ani.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Future<void> _launchFacebookURL() async {
      var facebookURL =
          "https://www.facebook.com/profile.php?id=100026873072478&mibextid=ZbWKwL";

      if (await canLaunch(facebookURL)) {
        await launch(facebookURL);
      } else {
        throw "Could not launch $facebookURL";
      }
    }

    return Scaffold(
        body: SingleChildScrollView(
            child: Response(
                mobile: Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          FadeInLeft(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi there, Welcome to my website",
                                    style: AppTextStyle.aText(),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I'm",
                                        style: AppTextStyle.nameText2(),
                                      ),
                                      Text(
                                        " Aung Myo Khant,",
                                        style: AppTextStyle.nameText(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I'm a",
                                        style: AppTextStyle.aText2(),
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            " Flutter Developer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                          TyperAnimatedText(
                                            " Freelancer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                          TyperAnimatedText(
                                            " Android Developer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                        ],
                                        pause: Duration(milliseconds: 1000),
                                        displayFullTextOnTap: true,
                                        stopPauseOnTap: true,
                                        isRepeatingAnimation: true,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    """
Energetic and motivated employee with an additonal experience. 
Qualified to support enterprise companies’
products and able to deliver an incredible customer services. 
Currently seeking a challenging career with a progressive organization that provides an 
opportunity to my capitalize my skills and abilities""",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  FadeInDown(
                                    child: Container(
                                      width: 120,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: orange,
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        "Download CV",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FadeInRight(child: ProfileAnimation()),
                                      SizedBox(
                                        height: size.height * 0.08,
                                      ),
                                      FadeInDown(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.facebook_f,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.telegram_plane,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.instagram,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.linkedin,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.github_circled,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                tablet: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          FadeInLeft(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi there, Welcome to my website",
                                    style: AppTextStyle.aText(),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I'm",
                                        style: AppTextStyle.nameText2(),
                                      ),
                                      Text(
                                        " Aung Myo Khant,",
                                        style: AppTextStyle.nameText(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I'm a",
                                        style: AppTextStyle.aText2(),
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            " Flutter Developer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                          TyperAnimatedText(
                                            " Freelancer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                          TyperAnimatedText(
                                            " Android Developer",
                                            textStyle: AppTextStyle.aText3(),
                                          ),
                                        ],
                                        pause: Duration(milliseconds: 1000),
                                        displayFullTextOnTap: true,
                                        stopPauseOnTap: true,
                                        isRepeatingAnimation: true,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    """
Energetic and motivated employee with an additonal experience. 
Qualified to support enterprise companies’products and able to deliver an 
incredible customer services. Currently seeking a 
challenging career with a progressive organization that provides an 
opportunity to my capitalize my skills and abilities""",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  FadeInDown(
                                    child: Container(
                                      width: 120,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: orange,
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        "Download CV",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FadeInRight(child: ProfileAnimation()),
                                      SizedBox(
                                        height: size.height * 0.08,
                                      ),
                                      FadeInDown(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.facebook_f,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.telegram_plane,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.instagram,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.linkedin,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                width: 45,
                                                height: 45,
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Icon(
                                                  MyFlutterApp.github_circled,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                desktop: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: FadeInLeft(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hi there, Welcome to my website",
                                      style: AppTextStyle.aText(),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "I'm",
                                          style: AppTextStyle.nameText2(),
                                        ),
                                        Text(
                                          " Aung Myo Khant,",
                                          style: AppTextStyle.nameText(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "I'm a",
                                          style: AppTextStyle.aText2(),
                                        ),
                                        AnimatedTextKit(
                                          animatedTexts: [
                                            TyperAnimatedText(
                                              " Flutter Developer",
                                              textStyle: AppTextStyle.aText3(),
                                            ),
                                            TyperAnimatedText(
                                              " Freelancer",
                                              textStyle: AppTextStyle.aText3(),
                                            ),
                                            TyperAnimatedText(
                                              " Android Developer",
                                              textStyle: AppTextStyle.aText3(),
                                            ),
                                          ],
                                          pause: Duration(milliseconds: 1000),
                                          displayFullTextOnTap: true,
                                          stopPauseOnTap: true,
                                          isRepeatingAnimation: true,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      """
Energetic and motivated employee with an additonal experience. 
Qualified to support enterprise companies’products and able to deliver an 
incredible customer services. Currently seeking a 
challenging career with a progressive organization that provides 
an opportunity to my capitalize my skills and abilities""",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    FadeInDown(
                                      child: Container(
                                        width: 120,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: orange,
                                            width: 2,
                                          ),
                                        ),
                                        child: Text(
                                          "Download CV",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FadeInRight(child: ProfileAnimation()),
                              SizedBox(
                                height: size.height * 0.08,
                              ),
                              FadeInDown(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    GestureDetector(
                                      onTap: (() {
                                        _launchFacebookURL();
                                      }),
                                      child: Container(
                                          width: 45,
                                          height: 45,
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: orange),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: Icon(
                                            MyFlutterApp.facebook_f,
                                            color: Colors.white,
                                          )),
                                    ),
                                    Container(
                                        width: 45,
                                        height: 45,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: orange),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Icon(
                                          MyFlutterApp.telegram_plane,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        width: 45,
                                        height: 45,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: orange),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Icon(
                                          MyFlutterApp.instagram,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        width: 45,
                                        height: 45,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: orange),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Icon(
                                          MyFlutterApp.linkedin,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        width: 45,
                                        height: 45,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: orange),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Icon(
                                          MyFlutterApp.github_circled,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}






// SizedBox(
                //   height: 350,
                // ),
                // AboutMe(),
                // SizedBox(
                //   height: 350,
                // ),
                // MyLast(),
                // SizedBox(
                //   height: 300,
                // ),
                // ContectMe(),




