import 'package:flutter/material.dart';

class CustomRectangularButton extends StatelessWidget {
  final String buttonLabel;
  final Color buttonBg,buttonLabelBg;
  final Function onButtonPressed;
  const CustomRectangularButton({required this.buttonLabel,required this.buttonBg,required this.buttonLabelBg,required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        onButtonPressed();
      },
      child: Container(
        height: 56,
        width: size.width,
        decoration: BoxDecoration(
          color: buttonBg,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Center(
          child: Text(buttonLabel,style: TextStyle(
            color: buttonLabelBg,fontSize: 16,fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
