import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nganu/dataBase/database.dart';
import 'package:nganu/pages/data.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  Stream? DataStream;

  getontheload() async {
    DataStream = await databaseMethods().getData();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allData() {
    return StreamBuilder(
      stream: DataStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.docs[index];
                  return Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 121, 121, 121),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                  "nama barang : " + ds["nama"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                            Text(
                              "harga : " + ds["harga"],
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "merk : " + ds["merk"],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            : Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Data()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Hai Fiko',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
      body: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Expanded(child: allData()),
            ],
          )),
    );
  }

  Future editDat(String id) =>
      showDialog(context: context, builder: (context) => AlertDialog(
        content: Container(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.cancel),
                  )
                ],
              )
            ],
          ),
        ),
      ));
}
