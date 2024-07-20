
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../helper/utils/pallete.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final String? LabelText;
  final String? suffixImage;
  final Color? color;
  final int? maximumLines;
  final FocusNode? foucsNode;
  final bool? readOnly;
  final bool? cursor;
  final ontap;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmited;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool enabled;
  final EdgeInsetsGeometry contentPadding; // Added property

  const CustomTextField({
    super.key,
    this.ontap,
    this.enabled = true,
    this.readOnly = false,
    this.cursor = true,
    this.controller,
    this.foucsNode,
    required this.hintText,
    this.LabelText,
    this.suffixImage,
    this.prefixIcon,
    this.keyboardType,
    this.onFieldSubmited,
    this.validator,
    this.suffixIcon,
    this.color=Pallete.textFieldColor,
    this.maximumLines = 1,
    this.obscureText = false,
    this.onChanged,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 12), // Set default value
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  final isArabic = Get.locale?.languageCode == 'ar';
  String? errorText;

  bool get hasError => errorText != null;

  String? _runValidator(String? value) {
    final validator = widget.validator;
    if (validator != null) {
      final error = validator(value!.trim());
      setState(() {
        errorText = error;
      });
      return error;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(


                decoration: const BoxDecoration(
                 // border: Border.all(color: Colors.red)
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Pallete.shadowColor,
                  //     spreadRadius: 3,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3), // Offset the shadow vertically
                  //   ),
                  // ],
                ),
                child: TextFormField(
                  enabled: widget.enabled,
                 // textAlign: isArabic ? TextAlign.right : TextAlign.left,
                  readOnly:widget.readOnly! ,
                  showCursor: widget.cursor,
                  focusNode: widget.foucsNode,
                  keyboardType: widget.keyboardType,
                  maxLines:widget.maximumLines ,
                  obscureText: widget.obscureText,
                  cursorColor: Pallete.primaryColor,
                  autovalidateMode: AutovalidateMode.disabled,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  controller: widget.controller,
                  validator: _runValidator,
                  onFieldSubmitted: _runValidator,
                  onChanged: widget.onChanged,
                //  textAlign: TextAlign.left,
                  style:
                   TextStyle(color: Pallete.black.withOpacity(.5), fontSize: 13,fontFamily: "Tajawal",),
                  scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                  decoration: InputDecoration(

                   // border:
                    //InputBorder.none,
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide( // Define the BorderSide here
                        color: Colors.grey,   // Set the color of the border
                        width: 2.0,          // Set the width of the border
                      ),
                    ),
                    fillColor: widget.color,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
    color: Colors.black.withOpacity(0.1),
    ) ,// Customize the error border color
                      borderRadius: BorderRadius.circular(6.0), // You can also add a border radius
                    ),
                    disabledBorder:const OutlineInputBorder(
                      borderSide: BorderSide( // Define the BorderSide here
                        color: Colors.green,   // Set the color of the border
                        width: 2.0,          // Set the width of the border
                      ),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide( // Define the BorderSide here
                        color: Colors.yellow,   // Set the color of the border
                        width: 2.0,          // Set the width of the border
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: widget.hintText,labelText: widget.LabelText,
                    hintStyle:  TextStyle(color:  Pallete.black.withOpacity(.5), fontSize: 13,fontFamily: "Tajawal",),
                    isDense: true,
                    errorStyle: const TextStyle(
                      color: Colors.transparent,
                    ),
                    prefixIcon:widget.prefixIcon,
                    // widget.prefixIcon == null
                    //     ? null
                    //     : Icon(
                    //   widget.prefixIcon,
                    //   size: 24,
                    //   color: Pallete.primaryColor,
                    // ),
                    suffixIcon:  widget.suffixIcon,
                    // widget.suffixImage == null
                    //     ? null
                    //     :GestureDetector(
                    //   onTap: widget.ontap,
                    //   child:Image.asset(widget.suffixImage!) ,
                    // ),
                    // IconButton(
                    //   icon: Icon(
                    //     widget.suffixIcon,
                    //     size: 24,
                    //     color: Pallete.primaryColor,
                    //   ),
                    //   onPressed: widget.ontap,
                    // ),
                    contentPadding: widget.contentPadding, // Use the property value here
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:  BorderSide(
                        color: Colors.black.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    filled: true,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        if (hasError) ...[
          const SizedBox(height: 2),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              errorText!,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ]
      ],
    );
  }
}
