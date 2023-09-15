import 'package:flutter/material.dart';
import 'package:my_portfolio/contant/Content.dart';
import 'package:my_portfolio/contant/textStyle.dart';
import 'package:my_portfolio/pages/aboutMe.dart';
import 'package:my_portfolio/pages/contect.dart';
import 'package:my_portfolio/pages/home.dart';
import 'package:my_portfolio/pages/myLast.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  final menuitem = [
    "Home",
    "Abbout",
    "Portfolio",
    "Contact",
  ];

  var menuIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: LayoutBuilder(
            builder: ((context, contrant) {
              if (contrant.maxWidth < 820) {
                return Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          "P",
                          style: AppTextStyle.firstStyle(),
                        ),
                        Text(
                          "ortfolio",
                          style: AppTextStyle.headStyle(),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: (() {}), icon: Icon(Icons.menu))
                ]);
              } else {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      child: Row(
                        children: [
                          Text(
                            "P",
                            style: AppTextStyle.firstStyle(),
                          ),
                          Text(
                            "ortfolio",
                            style: AppTextStyle.headStyle(),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: TabBar(
                        indicatorColor: orange,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            child: Text(
                              "Home",
                              style: AppTextStyle.headStyle(),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "About",
                              style: AppTextStyle.headStyle(),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Services",
                              style: AppTextStyle.headStyle(),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Contacts",
                              style: AppTextStyle.headStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                );
              }
            }),
          )),
      body: TabBarView(controller: _tabController, children: [
        Home(),
        AboutMe(),
        MyLast(),
        ContectMe(),
      ]),
    );
  }
}
