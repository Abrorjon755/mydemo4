import 'package:flutter/material.dart';

class YangiSahifa extends StatefulWidget {
  static const String id = "yangiSahifa";
  final String? name;
  final int? age;

  const YangiSahifa({super.key, this.name, this.age});

  @override
  State<YangiSahifa> createState() => _YangiSahifaState();
}

class _YangiSahifaState extends State<YangiSahifa> {
    void _backToFinish(List value, BuildContext context) async {
      Navigator.of(context).pop({"name1": value[0], "age1": value[1]});
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _backToFinish(["Dart", 33], context);
          },
          child: Text("name ${widget.name} Age ${widget.age}"),
        ),
      ),
    );
  }
}
