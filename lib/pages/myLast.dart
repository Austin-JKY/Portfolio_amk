import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:my_portfolio/contant/textStyle.dart';

class MyLast extends StatefulWidget {
  const MyLast({super.key});

  @override
  State<MyLast> createState() => _MyLastState();
}

class _MyLastState extends State<MyLast> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List image = [
      "assets/images/pj1.jpg",
      "assets/images/pj2.jpg",
      "assets/images/pj3.jpg",
      "assets/images/pj4.jpg",
      "assets/images/pj5.jpg",
      "assets/images/pj6.jpg",
    ];

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Latest ",
            style: AppTextStyle.headStyle2(),
          ),
          Text(
            "/ Project",
            style: AppTextStyle.headStyle3(),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      // Row(
      //   children: [
      //     Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         ClipRRect(
      //           borderRadius: BorderRadius.circular(20),
      //           child: Image(
      //             image: AssetImage(image[0]),
      //             width: 300,
      //             height: 250,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         Container(
      //           width: 300,
      //           height: 250,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               color: white.withOpacity(0.2)),
      //           child: Column(children: [
      //             Text(
      //               "Movie App",
      //               style: AppTextStyle.aText(),
      //             )
      //           ]),
      //         ),
      //       ],
      //     ),
      //   ],
      // )
      Container(
        width: size.width,
        height: 500,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 250,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24),
            itemCount: image.length,
            itemBuilder: ((context, index) {
              var d1 = image[index];
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(d1),
                      width: 300,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            })),
      )
    ]);
  }
}
