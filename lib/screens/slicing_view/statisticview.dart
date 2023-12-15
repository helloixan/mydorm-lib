import 'package:flutter/material.dart';
import 'package:mydorm/components/statistic_box.dart';
import 'package:mydorm/constants/constant.dart';

class StatisticView extends StatelessWidget {
  const StatisticView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
                width: width,
                height: height,
                child: Column(children: [
                  AppBar(
                    leading: const BackButton(),
                    backgroundColor: kWhite,
                    title: Text(
                      'Apps',
                      style: kBoldTextStyle.copyWith(fontSize: 20),
                    ),
                    centerTitle: true,
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          color: kGray,
                          padding: const EdgeInsets.symmetric(
                              vertical: 45, horizontal: 30),
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                StatisticBox(time: "Desember 2023"),
                                SizedBox(
                                  height: 15,
                                ),
                                StatisticBox(time: "November 2023"),
                                SizedBox(
                                  height: 15,
                                ),
                                StatisticBox(time: "October 2023")
                              ])))
                ]))));
  }
}
