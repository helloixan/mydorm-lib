import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/apps.dart';

class NotAvailable extends StatelessWidget {
  const NotAvailable({super.key});

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
                leading: const BackButton(),
                backgroundColor: kWhite,
                title: Text(
                  "Statistik",
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
                            Icons.sentiment_dissatisfied_rounded,
                            size: 200,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Mohon maaf fitur ini belum tersedia",
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
