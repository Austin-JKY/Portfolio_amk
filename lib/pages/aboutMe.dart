import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/contant/Content.dart';
import 'package:my_portfolio/contant/Response.dart';
import 'package:my_portfolio/contant/skill.dart';
import 'package:my_portfolio/contant/textStyle.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Response(
        mobile: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  child: Container(
                    width: 300,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/me3.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                FadeInDown(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: AppTextStyle.nameText(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "My Name is Aung Myo Khant and I'm a Mobile Daeveloper",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """
I'm a Flutter developer from Myanmar who is comfortable working with
Flutter and responsive mobile design to deliver exceptional customer experience.
I'm 21years old and I've finished matriculation. I'm available for freelance.
                              """,
                        style: AppTextStyle.aText(),
                      ),
                      Text(
                        "What Skill I Have",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        margin: EdgeInsets.only(top: 20),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: skill.length,
                            itemBuilder: ((context, index) {
                              Skill data = skill[index];
                              // ignore: avoid_unnecessary_containers
                              return Container(
                                  margin: EdgeInsets.all(5),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 136, 132, 132),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Image(
                                        image: AssetImage(data.image),
                                        width: 40,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        data.name,
                                        style: AppTextStyle.skillText(),
                                      )
                                    ],
                                  ));
                            })),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        tablet: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  child: Container(
                    width: 300,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/me3.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                FadeInDown(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: AppTextStyle.nameText(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "My Name is Aung Myo Khant and I'm a Mobile Daeveloper",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """
I'm a Flutter developer from Myanmar who is comfortable working with
Flutter and responsive mobile design to deliver exceptional customer experience.
I'm 21years old and I've finished matriculation. I'm available for freelance.
                              """,
                        style: AppTextStyle.aText(),
                      ),
                      Text(
                        "What Skill I Have",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        margin: EdgeInsets.only(top: 20),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: skill.length,
                            itemBuilder: ((context, index) {
                              Skill data = skill[index];
                              // ignore: avoid_unnecessary_containers
                              return Container(
                                  margin: EdgeInsets.all(5),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 136, 132, 132),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Image(
                                        image: AssetImage(data.image),
                                        width: 40,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        data.name,
                                        style: AppTextStyle.skillText(),
                                      )
                                    ],
                                  ));
                            })),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        desktop: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInUp(
                  child: Container(
                    width: 300,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/me3.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: FadeInDown(
                    child: Container(
                      margin: EdgeInsets.only(top: 160, left: 150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Me",
                            style: AppTextStyle.nameText(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My Name is Aung Myo Khant and I'm a Mobile Daeveloper",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            """
                  I'm a Flutter developer from Myanmar who is comfortable working with
                  Flutter and responsive mobile design to deliver exceptional customer experience.
                  I'm 21years old and I've finished matriculation. I'm available for freelance.
                                  """,
                            style: AppTextStyle.aText(),
                          ),
                          Text(
                            "What Skill I Have",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 400,
                            height: 100,
                            margin: EdgeInsets.only(top: 20),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: skill.length,
                                itemBuilder: ((context, index) {
                                  Skill data = skill[index];
                                  // ignore: avoid_unnecessary_containers
                                  return Container(
                                      margin: EdgeInsets.all(5),
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 136, 132, 132),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Image(
                                            image: AssetImage(data.image),
                                            width: 40,
                                            height: 50,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            data.name,
                                            style: AppTextStyle.skillText(),
                                          )
                                        ],
                                      ));
                                })),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}



// SingleChildScrollView(
//           child: SizedBox(
//             width: size.width,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 150,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     FadeInUp(
//                       child: Container(
//                         width: 300,
//                         height: 350,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                   "assets/images/me3.jpg",
//                                 ),
//                                 fit: BoxFit.cover)),
//                       ),
//                     ),
//                     FadeInDown(
//                       child: Container(
//                           child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "About Me",
//                             style: AppTextStyle.nameText(),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "My Name is Aung Myo Khant and I'm a Mobile Developer",
//                             style: TextStyle(
//                               fontSize: 18,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             """
// I'm a Flutter developer from Myanmar who is comfortable working with
// Flutter and responsive mobile design to deliver exceptional customer experience.
// I'm 21years old and I've finished matriculation. I'm available for freelance.
//                           """,
//                             style: AppTextStyle.aText(),
//                           ),
//                           Text(
//                             "What Skill I Have",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                           Container(
//                             width: 400,
//                             height: 100,
//                             margin: EdgeInsets.only(top: 20),
//                             child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: skill.length,
//                                 itemBuilder: ((context, index) {
//                                   Skill data = skill[index];
//                                   // ignore: avoid_unnecessary_containers
//                                   return Container(
//                                       margin: EdgeInsets.all(5),
//                                       width: 90,
//                                       height: 90,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color:
//                                             Color.fromARGB(255, 136, 132, 132),
//                                       ),
//                                       child: Column(
//                                         children: [
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Image(
//                                             image: AssetImage(data.image),
//                                             width: 40,
//                                             height: 50,
//                                           ),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Text(
//                                             data.name,
//                                             style: AppTextStyle.skillText(),
//                                           )
//                                         ],
//                                       ));
//                                 })),
//                           ),
//                         ],
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )