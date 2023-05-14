import 'package:ecommerce/ui/utils/app_colors.dart';
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
    return Wrap(
      children: [
        stepperButton(() {
          if (_currentValue > 1) {
            _currentValue--;
            _stepperTEController.text = _currentValue.toString();
          }
        }, Icons.remove),
        SizedBox(
          width: 50,
          height: 30,
          child: TextField(
            controller: _stepperTEController,
            enabled: false,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
          ),
        ),
        stepperButton(() {
          if (_currentValue < 20) {
            _currentValue++;
            _stepperTEController.text = _currentValue.toString();
          }
        }, Icons.add),
      ],
    );
  }

  Widget stepperButton(VoidCallback onTap, IconData iconData) {
    return SizedBox(
      width: 30,
      height: 30,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            iconData,
            size: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
