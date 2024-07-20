

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class SuccessfullyScreen extends StatefulWidget {
  const SuccessfullyScreen({super.key});

  @override
  State<SuccessfullyScreen> createState() => _SuccessfullyScreenState();
}

class _SuccessfullyScreenState extends State<SuccessfullyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      context.push('/ProviderDashboard');
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
       // backgroundColor: Pallete.primaryColor,
        leading: GestureDetector(
          onTap: () {
             Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios,color: Pallete.black,),
        ),

        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             // SizedBox(height: 2.h,),
              Image.asset(CustomAssets.check, height: 15.h),
              SizedBox(height: 2.h,),
              StyledText(text: 'You have successfully completed the order.'.tr),


            ],
          ),
        ),
      ),
    );
  }
}


