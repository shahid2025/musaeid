
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletSuccessfulScreen extends StatefulWidget {
  const WalletSuccessfulScreen({super.key});

  @override
  State<WalletSuccessfulScreen> createState() => _WalletSuccessfulScreenState();
}

class _WalletSuccessfulScreenState extends State<WalletSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        children: [
          SizedBox(height: 18.h,),
Center(child: Image.asset(CustomAssets.successful,height: 24.h,)),
          SizedBox(height: 5.h,),
          StyledText(text: 'Paid'.tr,fontSize: 20,),
          SizedBox(
              width: 80.w,
              child: StyledText(text: 'payment_successful'.tr,fontWeight: FontWeight.w500,
                fontSize: 16,align: TextAlign.center,)),
          SizedBox(height: 10.h,),
          CustomButton(label: 'go_to_wallet'.tr, onPressed: (){
            context.push('/ProviderDashboard');
          },width: 50.w,)
        ],
      ),
    );
  }
}
