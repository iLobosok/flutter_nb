import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_nbn/currency/data.dart';
import 'package:flutter_nbn/screenprint/cardui.dart';

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({Key? key}) : super(key: key);

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

Future<List<Data>> fetchProcessors() async {
  try {
    final response = await Dio().get(
      'https://www.nbrb.by/api/exrates/currencies',
      options: Options(
        responseType: ResponseType.plain,
      ),
    );
    return List<Data>.from(
      json
          .decode(
            response.data,
          )
          .map(
            (x) => Data.fromMap(x),
          ),
    );
  } on DioError catch (ex) {
    // Assuming there will be an errorMessage property in the JSON object
    //if (ex.response?.statusCode == 404) {}
    throw DioError(
      requestOptions: ex.requestOptions,
      error: ex.error,
      response: ex.response,
    );
  }
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Data>>(
          future: fetchProcessors(),
          //initialData: InitialData,
          builder: (context, data) {
            if (data.hasData) {
              return ListView.builder(
                itemCount: data.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Center(
                        child: CardUI(
                      nameCur: data.data![index].curNameEng,
                      //priceCur: data.data![index].cur,
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
  //required int priceCur,
}) {
  return Card(
    color: Colors.white,
    child: Center(
      child: Row(
        children: <Widget>[
          Text(nameCur),
          const Spacer(),
          //Text(priceCur.toString()),
        ],
      ),
    ),
  );
}
