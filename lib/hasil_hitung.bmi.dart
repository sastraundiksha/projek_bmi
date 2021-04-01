import 'package:flutter/material.dart';
import 'dart:math';
// ignore: unused_import
import 'about.dart';

class BMIResult extends StatelessWidget {
// ignore: non_constant_identifier_names
  BMIResult(
      // ignore: non_constant_identifier_names
      {@required this.tinggi_badan,
      // ignore: non_constant_identifier_names
      @required this.berat_badan,
// ignore: non_constant_identifier_names
      @required this.nama_lengkap,
      // ignore: non_constant_identifier_names
      @required this.u_umur,
      @required this.jk});
// ignore: non_constant_identifier_names
  final int tinggi_badan;
// ignore: non_constant_identifier_names
  final int u_umur;
// ignore: non_constant_identifier_names
  final int berat_badan;
// ignore: non_constant_identifier_names
  final String nama_lengkap;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Gemuk";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Kurus";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Hasil  BMI'),
      ),
      body: Container(
        color: Colors.black38,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 35,
              child: Container(),
            ),
            Container(),
            new Text(
              // ignore: unnecessary_brace_in_string_interps
              "Nama  :  ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
              child: Container(),
            ),
            new Text(
              "Umur  :  $u_umur  Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
              child: Container(),
            ),
            new Text(
              // ignore: unnecessary_brace_in_string_interps
              "Jenis  Kelamin  :  ${jk}  ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
              child: Container(),
            ),
            Text(
              cBMI,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10,
              child: Container(),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(),
            ),
            Text(
              'Range BMI Normal atau Ideal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              '17,5  -	22.9  ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 25,
              child: Container(),
            ),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return Colors.blue; // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/FirstPage');
                },
                // textColor: Colors.white,
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
