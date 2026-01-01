import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    void convert() {
      result = double.parse(textEditingController.text)* 1400;
      setState(() {
        
      });
    }
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: Color.fromARGB(255, 255, 255, 255),
        style: BorderStyle.solid,
      ),
    );
    return CupertinoPageScaffold(
      backgroundColor: Color.fromRGBO(76, 0, 255, 1),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromRGBO(76, 0, 255, 1),
        middle: Text(
          "Currency Converter",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
        child: Center(
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
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: TextStyle(
                  color: const Color.fromARGB(255, 0, 98, 255),
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: "Please Enter athe Amount in USD",
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.activeBlue,
                  child: const Text("Convert"),
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