
import 'package:flutter/foundation.dart';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
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
                ),
              ),
              TextButton(onPressed: () {
                if (kDebugMode) {
                  print("Button Clicked");
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
              child: Text("Click Me"),
              ),
            ],
          )
        ),
      );
  }
}