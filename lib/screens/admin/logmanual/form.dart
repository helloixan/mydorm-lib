import 'package:flutter/material.dart';
import 'package:mydorm/components/dropdown.dart';
// import 'package:mydorm/components/date_picker.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/components/boxform.dart';
import 'package:mydorm/templates/sukses.dart';

class LogManual extends StatelessWidget {
  const LogManual({super.key});

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
                  'Log Manual',
                  style: kBoldTextStyle.copyWith(fontSize: 20),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const BoxForm(
                        title: 'Dormitizen',
                        guideText: "Masukkan Nama",
                        desc: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Status',
                        style: kBoldTextStyle.copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const DropDownBox(),
                      const SizedBox(
                        height: 15,
                      ),
                      // const DatePicker(),
                      const BoxForm(
                        title: "Tanggal",
                        guideText: "Masukkan Tanggal",
                        desc: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const BoxForm(
                        title: "Waktu",
                        guideText: "Masukkan Waktu",
                        desc: false,
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccessScreen(
                                      title: "Log Manual",
                                      desc: "Data berhasil ditambahkan!")));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          height: 64,
                          decoration: BoxDecoration(
                              color: const Color(0xFFB22D30),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Tambahkan',
                            style: kSemiBoldTextStyle.copyWith(
                                color: kWhite, fontSize: 16),
                          ),
                        ),
                      )
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
