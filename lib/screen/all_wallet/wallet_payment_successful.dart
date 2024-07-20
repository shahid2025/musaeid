import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletPaymentSuccesful extends StatefulWidget {
  const WalletPaymentSuccesful({super.key});

  @override
  State<WalletPaymentSuccesful> createState() => _WalletPaymentSuccesfulState();
}

class _WalletPaymentSuccesfulState extends State<WalletPaymentSuccesful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Pallete.primaryColor,
        title:  StyledText(text: 'Payment Successful'.tr,color:  Pallete.white,),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_forward_ios_outlined,color:  Pallete.white,)),
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),
          Center(child: Image.asset(CustomAssets.paymentSuccessful)),
          SizedBox(height: 5.h,),
           Center(child: StyledText(text: 'Payment Done'.tr,fontSize: 20,fontWeight: FontWeight.w600,)),
          SizedBox(height: 2.h,),
           Center(child: StyledText(text: 'Refresh the screen to see in your wallet'.tr,fontSize: 14,fontWeight: FontWeight.w300,)),

          SizedBox(height: 10.h,),
          Center(child: CustomButton(label: 'Go to Wallet'.tr, onPressed: (){
            context.push('/HomeScreen');
          },width: 80.w,))


        ],
      ),
    );
  }
}
