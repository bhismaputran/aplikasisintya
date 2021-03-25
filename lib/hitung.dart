import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenghitungLuasJajarGenjang extends StatefulWidget {
  @override
  _MenghitungLuasJajarGenjangState createState() =>
      _MenghitungLuasJajarGenjangState();
}

class _MenghitungLuasJajarGenjangState
    extends State<MenghitungLuasJajarGenjang> {
  double alas = 0;
  double tinggi = 0;
  double luas = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Menghitung Luas Jajar Genjang",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.pinkAccent,
            child: Image.asset(
              "assets/jajargenjang.gif",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "Mari Kita Hitung Luas Jajar Genjang !",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text("Alas Jajar Genjang"),
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      alas = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Tinggi Jajar Genjang"),
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      tinggi = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              setState(() {
                luas = alas * tinggi;
              });
            },
            child: Text("Hitung !"),
          ),

          Text("Luas Jajar Genjang=$luas")
        ],
      ),
    );
  }
}
