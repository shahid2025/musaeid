import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WithdrawalSuccessful extends StatefulWidget {
  const WithdrawalSuccessful({super.key});

  @override
  State<WithdrawalSuccessful> createState() => _WithdrawalSuccessfulState();
}

class _WithdrawalSuccessfulState extends State<WithdrawalSuccessful> {
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
          SizedBox(height: 5.h,),
Center(child: Image.asset(CustomAssets.WithdrawalSuccessful,fit: BoxFit.cover,height: 15.h,)),
          SizedBox(height: 2.h,),
          const Center(child: StyledText(text: 'Withdraw Successful',fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff4da245),)),
          SizedBox(height: 2.h,),
          const Center(child: StyledText(text: 'Withdraw Amount',fontSize: 16,fontWeight: FontWeight.w400,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: StyledText(text: 'SAR',fontSize: 12,fontWeight: FontWeight.w400,),
              ),
              SizedBox(width: 2.w,),
              const StyledText(text: '3,050',fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xff4fa498),),
            ],
          ),
          const Center(child: StyledText(text: 'has been deducted from your Nusaeid Wallet',fontSize: 16,fontWeight: FontWeight.w400,)),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Withdrawal From',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: 'Nusaeid Wallet',fontSize: 12,fontWeight: FontWeight.w400,),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Bank Account',fontSize: 12,fontWeight: FontWeight.w400,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledText(text: '9857 ******** 8458',fontSize: 12,fontWeight: FontWeight.w700,),
                      StyledText(text: 'Riyadh Bank',fontSize: 12,fontWeight: FontWeight.w400,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Account Holder Name',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: 'Ahmed Zia',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Transaction Fee',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: '...',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Amount to be received',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: '3,043',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          const Divider(),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Time',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: '01 يناير 2024، 07:10 م',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Transaction ID',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: 'GT556GF56CBV',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 3.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledText(text: 'Please visit for our ',fontSize: 12,fontWeight: FontWeight.w400,),
                  StyledText(text: 'Help Center  ',fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff4fa498),),
                  StyledText(text: ' for further assistance',fontSize: 12,fontWeight: FontWeight.w400,),
               ],
              ),
            ),
          ),
          SizedBox(height: 3.h,),
          Center(child: CustomButton(label: 'Finished'.tr, onPressed: (){
            context.push('/WalletSuccessfulScreen');
          },width: 90.w,)),

          SizedBox(height: 3.h,),
          Center(child: CustomButton(label: 'Screen Capture'.tr, onPressed: (){
            context.push('/HomeScreen');
          },width: 90.w,)),
        ],
      ),
    );
  }
}
