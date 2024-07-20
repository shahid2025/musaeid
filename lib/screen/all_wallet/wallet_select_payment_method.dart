import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletSelectpaymentmethod extends StatefulWidget {
  const WalletSelectpaymentmethod({super.key});

  @override
  State<WalletSelectpaymentmethod> createState() => _WalletSelectpaymentmethodState();
}

class _WalletSelectpaymentmethodState extends State<WalletSelectpaymentmethod> {
  int selectedIndex1 = -1;
  bool isSwitchOn = false;


  String selectedPaymentMethod = '';
  // List<checkoutModel> payment=[
  //   checkoutModel(CustomAssets.applepay, 'Apple Pay'),
  //   checkoutModel(CustomAssets.mada, 'Mada'),
  //   checkoutModel(CustomAssets.master, 'Credit Card'),
  //   checkoutModel(CustomAssets.visa, 'Credit Card'),
  //   checkoutModel(CustomAssets.wallet, 'Cash'),
  //   checkoutModel(CustomAssets.applepay, 'Apple Pay'),
  // ];
  String selectedOption = 'Option 1';

  final isArabic = Get.locale?.languageCode == 'ar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Pallete.primaryColor,
        title:  StyledText(text: 'Confirm Payment'.tr,color:  Pallete.white,),
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
          SizedBox(height: 3.h,),
           StyledText(text: 'Deposit Amount'.tr,fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 1.h,),
          const StyledText(text: 'SAR300',fontWeight: FontWeight.w800,fontSize: 25,color: Pallete.primaryColor,),
           Padding(
             padding: const EdgeInsets.only(right: 16.0),
             child: Align(
                 alignment: Alignment.centerRight,
                 child: StyledText(text: 'Select Deposit Method'.tr,fontWeight: FontWeight.w800,fontSize: 20,color: Pallete.primaryColor,)),
           ),
SizedBox(height: 5.h,),
          // Column(
          //   children: List.generate(5, (index) {
          //     return isArabic?
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 16.0,right: 16),
          //           child: Image.asset(payment[index].image),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(2.0),
          //           child: Container(
          //             alignment: Alignment.center,
          //             height: 4.h,
          //             width: 50.w,
          //             child: RadioListTile(
          //               title: Align(
          //                   alignment:Alignment.centerLeft,
          //                   child: Text(payment[index].text)),
          //               value: 'Option ${index + 1}',
          //               groupValue: selectedOption,
          //               onChanged: (value) {
          //                 setState(() {
          //                   selectedOption = value.toString();
          //                 });
          //               },
          //               controlAffinity: ListTileControlAffinity.trailing, // Aligns the radio button to the left
          //             ),
          //
          //           ),
          //         ),
          //
          //       ],
          //     ):
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //
          //         Padding(
          //           padding: const EdgeInsets.all(2.0),
          //           child: Container(
          //             alignment: Alignment.center,
          //             height: 4.h,
          //             width: 50.w,
          //             child: RadioListTile(
          //               title: Text(payment[index].text),
          //               value: 'Option ${index + 1}',
          //               groupValue: selectedOption,
          //               onChanged: (value) {
          //                 setState(() {
          //                   selectedOption = value.toString();
          //                 });
          //               },
          //               // controlAffinity: ListTileControlAffinity.leading, // Aligns the radio button to the left
          //             ),
          //
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 16.0,right: 16),
          //           child: Image.asset(payment[index].image),
          //         ),
          //       ],
          //     );
          //   }),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Radio Button
                  Radio<String>(
                    value: 'Debit Card',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  // Debit Card Text
                  Text(
                    'Debit Card',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              // Icons
              Image.asset(
               CustomAssets.wallet, // Add the path to your mastercard icon asset
                width: 40,
              ),
            ],
          ),

          GestureDetector(
            onTap: (){
             // _showPaymentBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                const Icon(Icons.add,color: Pallete.primaryColor,),
                StyledText(text: 'add_payment_method'.tr,color: Pallete.primaryColor,),
              ],),
            ),
          ),
          SizedBox(height: 45.h,),
          const Divider(thickness: 3,),
          const Spacer(),
          Center(
            child: SizedBox(
              width: 90.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    children: [
                      StyledText(text: 'Deposit Amount'.tr,fontSize: 10,fontWeight: FontWeight.w500,),
                      const StyledText(text: '300',fontWeight: FontWeight.bold,fontSize: 20,),

                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      //context.push('/WalletPaymentSuccesful');
                      context.push('/WithdrawalSuccessful');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(

                          color: const Color(0xff52aa9d),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child:  StyledText(text: 'Follow Up'.tr,color: Pallete.white,),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          )
        ],
      ),
    );
  }
}
