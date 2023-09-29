import 'package:flutter/material.dart';
import 'package:mydemo4/yangi_sahifa.dart';

class UySahifa extends StatefulWidget {
  static const String id = "uySahifa";

  UySahifa({super.key, this.name1, this.age1});

  String? name1;
  int? age1;

  @override
  State<UySahifa> createState() => _UySahifaState();
}

class _UySahifaState extends State<UySahifa> {
  Future openDetailPage() async {
    Map result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            const YangiSahifa(name: "Flutter", age: 18)));
    if (result != null &&
        result.containsKey("name1")) {
      setState(() {
        widget.name1 = result["name1"];
        widget.age1 = result["age1"];
      });
    } else {
      print("No data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              openDetailPage();
            },
            child: Text(
              "Name ${widget.name1} Age ${widget.age1}",
              style: const TextStyle(fontSize: 30, color: Colors.white),
            )),
      ),
    );
  }
}
