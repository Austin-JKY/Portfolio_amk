import 'dart:math';

import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Response(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: ((context, contrant) {
      if (contrant.maxWidth < 400) {
        return Container(
            padding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/10/16/07/07/stars-3750824_1280.png"),
                    fit: BoxFit.cover)),
            child: mobile);
      } else if (contrant.maxWidth < 820) {
        return Container(
            padding: EdgeInsets.only(
              left: size.width * 0.07,
              right: size.width * 0.07,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/10/16/07/07/stars-3750824_1280.png"),
                    fit: BoxFit.cover)),
            child: tablet);
      } else {
        return Container(
            padding: EdgeInsets.only(
              left: size.width * 0.1,
              right: size.width * 0.1,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/10/16/07/07/stars-3750824_1280.png"),
                    fit: BoxFit.cover)),
            child: desktop);
        ;
      }
    }));
  }
}
