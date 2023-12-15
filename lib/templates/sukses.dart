import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/apps.dart';

class SuccessScreen extends StatelessWidget {
  final String title, desc;
  const SuccessScreen({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              AppBar(
                backgroundColor: kWhite,
                title: Text(
                  title,
                  style: kBoldTextStyle.copyWith(fontSize: 20),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.check_circle_rounded,
                            color: Color(0xFF36C06E),
                            size: 200,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            desc,
                            style: kBoldTextStyle.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                      const Features(screen: Apps(), title: "Apps")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
