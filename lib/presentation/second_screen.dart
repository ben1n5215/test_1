import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key}) ;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color color1 = Colors.black;
  Color color2 = Colors.yellow;
  final spacer = const SizedBox(height: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Draggable<Color>(
                data: Colors.green,
                feedback: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              DragTarget<Color>(
                onAccept: (data) {
                  if (data != Colors.orange) {
                    setState(() => color1 = data);
                  }
                },
                builder: (context, _, __) => Container(
                  color: color1,
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                    "one",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              )
            ],
          ),
           spacer,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Draggable<Color>(
                data: Colors.orange,
                feedback: Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              DragTarget<Color>(
                onAccept: (data) {
                  if (data != Colors.green) {
                    setState(() => color2 = data);
                  }
                },
                builder: (context, _, __) => Container(
                  color: color2,
                  width: 100,
                  height: 100,
                  child: const Center(
                      child: Text(
                        "two",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
