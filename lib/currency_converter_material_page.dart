

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State createState() => _CurrencyConverterMaterialPageState();
}
class _CurrencyConverterMaterialPageState extends State{
  double result = 0;
    final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: Color.fromARGB(255, 255, 255, 255),
        style: BorderStyle.solid,
        ),
      );
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 0, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(76, 0, 255, 1),
        elevation: 1,
        title: Text(
          "Currency Converter",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "# ${result != 0 ? result.toStringAsFixed(2):result.toStringAsFixed(0)}",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 255, 255),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(
                  color: const Color.fromARGB(255, 0, 98, 255),
                  ),
                  decoration: InputDecoration(
                    hintText: "Please Enter athe Amount in USD",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 0, 98, 255),
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: const Color.fromARGB(255, 0, 98, 255),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text)* 1400;
                    }
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 98, 255),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
                child: Text("Click Me"),
                ),
              ),
            ],
          )
        ),
      );
  }
}