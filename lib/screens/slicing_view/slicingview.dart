import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/screens/slicing_view/editview.dart';
import 'package:mydorm/screens/slicing_view/requestview.dart';
import 'package:mydorm/screens/slicing_view/statisticview.dart';

class SlicingView extends StatelessWidget {
  const SlicingView({super.key});

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
                  'Slicing View',
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Features(screen: RequestView(), title: "Request view"),
                      Features(screen: EditView(), title: "Edit View"),
                      Features(screen: StatisticView(), title: "Statistic View")
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
