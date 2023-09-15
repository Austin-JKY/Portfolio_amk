import 'package:flutter/material.dart';
import 'package:my_portfolio/contant/Content.dart';
import 'package:my_portfolio/contant/textStyle.dart';

class ContectMe extends StatefulWidget {
  const ContectMe({super.key});

  @override
  State<ContectMe> createState() => _ContectMeState();
}

class _ContectMeState extends State<ContectMe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contact",
              style: AppTextStyle.headStyle2(),
            ),
            Text(
              "/ Me",
              style: AppTextStyle.headStyle3(),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
              keyboardType: TextInputType.text,
              minLines: 6,
              maxLines: 6,
              decoration: InputDecoration(
                label: Text("Description"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              )),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: (() {}),
          child: Text("Message Me"),
          style: ElevatedButton.styleFrom(   
              backgroundColor: orange,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
        ),
        SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
