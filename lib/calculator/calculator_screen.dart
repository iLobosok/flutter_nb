import 'package:flutter/material.dart';
import 'package:flutter_nbn/currency/currencysettings.dart';
import 'package:flutter_nbn/currency/datavalue.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            children: const <Widget>[
              TextField(),
              Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
