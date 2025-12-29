
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        ),
      );
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("0",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 235, 235),
                ),
              ),
              TextField(
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: InputDecoration(
                  hintText: "Please Enter athe Amount in USD",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(153, 0, 0, 0),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: const Color.fromARGB(153, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              )
            ],
          )
        ),
      );
  }
}