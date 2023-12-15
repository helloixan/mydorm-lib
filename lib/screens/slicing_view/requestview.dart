import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/components/requestbox.dart';

class RequestView extends StatelessWidget {
  const RequestView({super.key});

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
                      'Request View',
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
                                RequestBox(
                                  name: "Iksan Oktav Risandy",
                                  type: "In",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RequestBox(name: "Dias Adani", type: "Out"),
                                SizedBox(
                                  height: 15,
                                ),
                                RequestBox(name: "Abdillah Aufa", type: "In")
                              ])))
                ]))));
  }
}
