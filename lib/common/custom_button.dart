
import 'package:flutter/material.dart';

import '../helper/utils/pallete.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;
  final Color textColor;
  final bool? isLoading;
  final double fontSize;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.height = 45.0,
    this.width = double.infinity,
    this.color = Pallete.primaryColor,
    this.fontSize = 20,
    this.isLoading,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Pallete.shadowColor,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 7), // Offset the shadow vertically
          ),
        ],
      ),
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height /5),
            ),
          ),
        ),
        child: isLoading == true
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                label,
                style: TextStyle(
                  fontFamily: "ClashDisplay",
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
