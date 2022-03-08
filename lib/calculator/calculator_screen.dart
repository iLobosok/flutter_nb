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
        child: FutureBuilder<List<Datavalue>>(
          future: fetchProcessors1(),
          //initialData: InitialData,
          builder: (context, data) {
            if (data.hasData) {
              Center(
                child: Row(
                  children: <Widget>[
                    DropdownButton<String>(
                      items: data.data!.[index].curName{
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    )
                  ],
                ),
              );
              return ListView.builder(
                itemCount: data.data!.length,
                itemBuilder: (context, index) {
                  return Center(
                      child: CardUI(
                    nameCur: data.data![index].curName,
                    priceCur: data.data![index].curOfficialRate,
                  ));
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

Widget CardUI({
  required String nameCur,
  required double priceCur,
}) {
  return Card(
    color: Colors.white,
    child: Center(
      child: Row(
        children: <Widget>[
          Text(nameCur),
          const Spacer(),
          Text(priceCur.toString()),
        ],
      ),
    ),
  );
}
