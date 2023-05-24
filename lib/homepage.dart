import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var num1 = 0, num2 = 0, sum = 0;
  // ignore: non_constant_identifier_names
  late final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doaddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 + num2;
    });
  }

  void dosubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 - num2;
    });
  }

  void domultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void dodivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
    final  num1 = 0;
     final num2 = 0;
       t1.text = "0";
       t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Container(
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output:$sum",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "enter number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "enter number 2 "),
              controller: t2,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                    onPressed: doaddition,
                    child: Text("+"),
                    color: Colors.blueAccent),
                MaterialButton(
                    onPressed: dosubtraction,
                    child: Text("-"),
                    color: Colors.blueAccent)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                    onPressed: domultiply,
                    child: Text("*"),
                    color: Colors.blueAccent),
                MaterialButton(
                    onPressed: dodivide,
                    child: Text("/"),
                    color: Colors.blueAccent),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: clear,
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
