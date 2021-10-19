import 'dart:convert';
import 'dart:math';

import 'package:exam/ui/thirdpage/third_page_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  int rand = Random().nextInt(123421);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fake Scoreboard",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getFromApiForGamePage(),
          builder: (context, AsyncSnapshot<Users> snap) {
            var data = snap.data!;
            return ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListTile(
                    title: Text(
                      data.name![index].toString(),
                    ),
                    subtitle: Text(
                      "Your Score: ${rand + index}",
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<Users> _getFromApiForGamePage() async {
    try {
      var _res = await http.get(
        Uri.parse(
          "https://jsonplaceholder.typicode.com/users",
        ),
      );
      if (_res.statusCode == 200) {
        return Users.fromJson(jsonDecode(_res.body));
      } else {
        throw Exception("ERROR");
      }
    } catch (e) {
      throw Exception("Error");
    }
  }
}
