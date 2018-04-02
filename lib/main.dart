import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyEditText(),
  ));
}

class MyEditText extends StatefulWidget {
  @override
  MyEditTextState createState() => new MyEditTextState();
}

class MyEditTextState extends State<MyEditText> {
  int results = 0;

  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using EditText"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Savings Rate..."),
                onSubmitted: (String str) {
                  setState(() {
                    results = int.parse(str);
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              new Text("It will take you $results years to retire")
            ],
          ),
        ),
      ),
    );
  }
}