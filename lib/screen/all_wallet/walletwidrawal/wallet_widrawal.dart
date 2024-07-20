import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/common/custom_text_field.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletWidthrwal extends StatefulWidget {
  const WalletWidthrwal({super.key});

  @override
  State<WalletWidthrwal> createState() => _WalletWidthrwalState();
}

class _WalletWidthrwalState extends State<WalletWidthrwal> {

  int? selectedRadio; // Allow null to manage the toggle off

  void toggleRadio(int value) {
    setState(() {
      if (selectedRadio == value) {
        selectedRadio = null; // Unselect if the same button is clicked again
      } else {
        selectedRadio = value; // Select the button if a different one or none is currently selected
      }
    });
  }
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.h,),
        const Center(child: StyledText(text: 'تفاصيل السحب المتاحة')),
        
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(CustomAssets.coins),
              const StyledText(text: '3,050',fontWeight: FontWeight.w800,fontSize: 24,color: Color(0xff52aa9d),),
              SizedBox(width: 2.w,),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: StyledText(text: 'SAR',fontWeight: FontWeight.w400,fontSize: 10,),
              ),
            ],),
            SizedBox(height: 1.h,),
            const Divider(),
            SizedBox(height: 1.h,),
            Center(
              child: SizedBox(
                width: 90.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 75.w,
                        child: const CustomTextField(hintText: 'أدخل المبلغ')),
                    const StyledText(text: 'MAX',color: Pallete.primaryColor,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            const Divider(thickness: 10,),
            SizedBox(height: 2.h,),
            Center(
              child: SizedBox(
                width: 90.w,
                child: Row(
                  children: [
                    Image.asset(CustomAssets.banks),
                    SizedBox(width: 3.w,),
                    const StyledText(text: 'حسابات السحب المحفوظة',fontWeight: FontWeight.w500,fontSize: 14,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Center(
              child: SizedBox(
                  width: 90.w,
                  child: const Divider()),
            ),
            SizedBox(height: 2.h,),
            Center(
              child: SizedBox(
                width: 90.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Pallete.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(CustomAssets.banksriyadh),
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledText(text: 'بنك الرياض'),
        
                          StyledText(text: '9857 ******** 8458',fontSize: 12,fontWeight: FontWeight.w400,),
                        ],
                      ),
                    ],
                  ),
        
                 Radio(
                 value: 1,
                 groupValue: selectedRadio,
                   onChanged: (int? value) {
                 toggleRadio(value!); // Call the toggle function on change
                },
                 ),
        
                ],),
              ),
            ),
            SizedBox(height: 3.h,),
            GestureDetector(
              onTap: (){
                _showFullWidthBottomSheet(context);
              },
              child: Center(
                child: Container(
                  height: 5.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Pallete.primaryColor),
                   // color: Pallete.primaryColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,color: Pallete.primaryColor,),
                      StyledText(text: 'إضافة مبلغ السحب',color: Pallete.primaryColor,),
                    ],
                  ),

                ),
              ),
            ),
             SizedBox(height: 28.h,),
            const Divider(thickness: 3,),
            SizedBox(height: 1.5.h,),
            // const Spacer(),
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
                    ),  GestureDetector(
                      onTap: (){
                        //context.push('/WalletSelectpaymentmethod');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
        
                            color: const Color(0xff52aa9d),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: const StyledText(text: 'ينسحب',color: Pallete.white,),
                      ),
                    ),
        
                  ],
                ),
              ),
            ),
           // SizedBox(height: 2.h,),
        
        
          ],
        ),
      ),
    );
  }
}
void _showFullWidthBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Pallete.white,
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [

            Center(
              child: Container(
                color: Pallete.textFieldtextColor,
                height: .5.h,width: 12.w,
              ),
            ),
            SizedBox(height:2.h),
            const Center(child: StyledText(text: 'إضافة حساب مصرفي', fontSize: 16.0,fontWeight: FontWeight.bold,)),
            SizedBox(height:2.h),
            const CustomTextField(hintText: 'Bank Name',suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),),
            SizedBox(height: 2.h,),
            const CustomTextField(hintText: 'Account Holder Name',suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),),
            SizedBox(height: 2.h,),
            const CustomTextField(hintText: 'Account Number or IBAN',suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),),
            SizedBox(height:2.h),

            SizedBox(height:2.h),
            CustomButton(label: 'Add Bank Account', onPressed: (){
              context.push('/WithdrawalSuccessful');
            },fontSize: 19,)
          ],
        ),
      );
    },
  );
}