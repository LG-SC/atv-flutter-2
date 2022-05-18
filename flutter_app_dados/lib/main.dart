import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  Random random = new Random();
  int dado1 = 1;
  int dado2 = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado1 = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dado$dado1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado2 = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dado$dado2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
