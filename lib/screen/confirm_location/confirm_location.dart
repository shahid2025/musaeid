import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:sizer/sizer.dart';
class ConfirmLocation extends StatefulWidget {
  const ConfirmLocation({super.key});

  @override
  State<ConfirmLocation> createState() => _ConfirmLocationState();
}

class _ConfirmLocationState extends State<ConfirmLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(CustomAssets.locations,height: 98.h,width: double.maxFinite,),
      CustomButton(label: 'Confirm Location'.tr, onPressed: (){
        context.push('/CnicAttachment');
      },width: 85.w,),

      ]),
    );
  }
}
