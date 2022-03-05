import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Datavalue>>(
          future: fetchProcessors1(),
          //initialData: InitialData,
          builder: (context, data) {
            if (data.hasData) {
              return ListView.builder(
                itemCount: data.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Center(
                        child: CardUI(
                      nameCur: data.data![index].curName,
                      priceCur: data.data![index].curOfficialRate,
                    )
                        //Text(data.data![index].curNameEng),
                        ),
                  );
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
          Text('$priceCur'),
        ],
      ),
    ),
  );
}
