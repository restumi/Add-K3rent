import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nganu/dataBase/database.dart';
import 'package:random_string/random_string.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  TextEditingController namaCont = new TextEditingController();
  TextEditingController hargaCont = new TextEditingController();
  TextEditingController merkCont = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'tambah Barang',
            style: TextStyle(
                fontSize: 25,
                color: Colors.yellow,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Barang",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: namaCont,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "harga",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: hargaCont,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "merk",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: merkCont,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    String id = randomAlpha(10);
                    Map<String, dynamic> infoBarangMap = {
                      "nama": namaCont.text,
                      "harga": hargaCont.text,
                      "id":id,
                      "merk": merkCont.text
                    };
                    await databaseMethods().addDetailBarang(infoBarangMap, id).then((value) {
                      Fluttertoast.showToast(
                        msg: "Barang  Berhasil Ditambahkan",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.black,
                        fontSize: 15
                    );
                    });
                  },
                  child: Text(
                    "tambahkan",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ),
            )
          ],
        ),
      ),
    );
  }
}
