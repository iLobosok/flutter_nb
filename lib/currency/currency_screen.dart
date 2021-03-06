import 'package:flutter/material.dart';
import 'package:flutter_nbn/currency/currencysettings.dart';
import 'package:flutter_nbn/currency/datavalue.dart';

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({Key? key}) : super(key: key);

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Datavalue>>(
        future: fetchProcessors1(),
        //initialData: InitialData,
        builder: (context, data) {
          if (data.hasData) {
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
            return const Center(child: CircularProgressIndicator());
          }
        },
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
