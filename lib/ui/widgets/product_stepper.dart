
import 'package:flutter/material.dart';

class ProductStepper extends StatefulWidget {
  const ProductStepper({Key? key}) : super(key: key);

  @override
  State<ProductStepper> createState() => _ProductStepperState();
}

class _ProductStepperState extends State<ProductStepper> {
  int _currentValue = 1;
  final TextEditingController _stepperTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              if (_currentValue > 1) {
                _currentValue--;
                _stepperTEController.text = _currentValue.toString();
              }
            },
            child: Icon(
              Icons.remove,
              size: 16,
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 30,
          child: TextField(
            controller: _stepperTEController,
            enabled: false,
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ),
        SizedBox(
          width: 30,
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero
            ),
            onPressed: () {
              if (_currentValue < 20) {
                _currentValue++;
                _stepperTEController.text = _currentValue.toString();
              }
            },
            child: Icon(
              Icons.add,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}