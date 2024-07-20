
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:musaeid/helper/utils/pallete.dart';




class  Utils {

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      // fontSize: 25
      // gravity: ToastGravity.TOP,
      // textColor: Colors.pink
    );


  }
  static primaryToastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Pallete.primaryColor,
      // fontSize: 25
      // gravity: ToastGravity.TOP,
      // textColor: Colors.pink
    );


  }
  // static void flushBarErrorMessage(String message,BuildContext context){
  //   showFlushbar(context: context, flushbar: Flushbar(
  //     duration: const Duration(seconds: 1),
  //     message: message,
  //   )..show(context));
  // }
}