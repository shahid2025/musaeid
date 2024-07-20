import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  String dropdownValue = 'week'.tr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 35.h,
            decoration: const BoxDecoration(
              color: Pallete.primaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 4.h,),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(Icons.arrow_forward_ios_outlined,color: Pallete.white,),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Image.asset(CustomAssets.coins),
                        SizedBox(width: 3.w,),
                        Column(
                          children: [
                            StyledText(text: 'Total Amount'.tr,fontSize: 16,color: Pallete.white,),
                            Row(
                              children: [
                                const StyledText(text: '3,050',fontSize: 24,fontWeight: FontWeight.bold,color: Pallete.white,),
                                SizedBox(width: 4.w,),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 13.0),
                                  child: StyledText(text: 'SAR',fontSize: 10,fontWeight: FontWeight.bold,color: Pallete.white,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],),

                  ],),
                ),
                GestureDetector(
                  onTap:(){
                    context.push('/WalletSelectDeposit');
                  },
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 5.h,
                      width: 35.w,
                      decoration: BoxDecoration(

                          color: const Color(0xff52aa9d),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(CustomAssets.walletLock,color: Pallete.white,),
                          SizedBox(width: 2.w,),
                          StyledText(text: 'Deposit'.tr,color: Pallete.white,),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
Column(
  children: [
    StyledText(text: 'Deposit'.tr,fontSize:10,color: Pallete.white,fontWeight: FontWeight.w400,),
    const StyledText(text: '3600',fontWeight: FontWeight.bold,fontSize: 16,color: Pallete.white,),
  ],
),
                      Container(height: 5.h,width: .4.w,color: Pallete.textFieldtextColor,),
                      Column(
                        children: [
                          StyledText(text: 'Refunded Amounts'.tr,fontSize:10,color: Pallete.white,fontWeight: FontWeight.w400,),
                          const StyledText(text: '3600',fontWeight: FontWeight.bold,fontSize: 16,color: Pallete.white,),
                        ],
                      ),
                      Container(height: 5.h,width: .4.w,color: Pallete.textFieldtextColor,),
                      Column(
                        children: [
                          StyledText(text: 'Refunded'.tr,fontSize:10,color: Pallete.white,fontWeight: FontWeight.w400,),
                          const StyledText(text: '600',fontWeight: FontWeight.bold,fontSize: 16,color: Pallete.white,),
                        ],
                      ),
                      Container(height: 5.h,width: .4.w,color: Pallete.textFieldtextColor,),
                      Column(
                        children: [
                          StyledText(text: 'Bonuses'.tr,fontSize:10,color: Pallete.white,fontWeight: FontWeight.w400,),
                          const StyledText(text: '50',fontWeight: FontWeight.bold,fontSize: 16,color: Pallete.white,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(text: 'Records'.tr,fontSize: 18,fontWeight: FontWeight.bold,),
              Container(
                height: 4.5.h,
                decoration: BoxDecoration(
                  color: Pallete.textFieldtextColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Visibility (visible:false, child: Icon(Icons.arrow_downward)),

                    // icon: const Icon(Icons.keyboard_arrow_down, color: Pallete.primaryColor),
                   //  iconSize: 24,
                   //  elevation: 16,
                    style: TextStyle(
                      color: Pallete.primaryColor,
                      fontSize: 16,
                    ),
                    underline:SizedBox(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['week'.tr, 'today'.tr, 'Monthly'.tr]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down, color: Pallete.primaryColor),
                            SizedBox(width: 2.w),
                            StyledText(text: value, fontSize: 16, color: Pallete.primaryColor),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h,),
          Center(
            child: SizedBox(
              width: 90.w,
              child: Column(
                children: List.generate(3, (index) {
                  Color textColor=index==2 ? Pallete.red:const Color(0xff4da245);
                  return  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                    color: Pallete.grey.withOpacity(.2),
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(CustomAssets.copy),
                                ),
                              ),
                              SizedBox(width: 2.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StyledText(text: 'Deposit'.tr,fontWeight: FontWeight.bold,fontSize: 17,),
                                  StyledText(text: 'january_30_2024_at_10_23_am'.tr,fontWeight: FontWeight.w400,fontSize: 14,),
                                ],
                              ),
                            ],
                          ),
                          StyledText(text: '300,000  ر.ي',color:textColor)
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
