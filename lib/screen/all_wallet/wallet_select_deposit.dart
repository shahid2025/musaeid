import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_text_field.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class WalletSelectDeposit extends StatefulWidget {
  const WalletSelectDeposit({super.key});

  @override
  State<WalletSelectDeposit> createState() => _WalletSelectDepositState();
}

class _WalletSelectDepositState extends State<WalletSelectDeposit> {
List<String> staticprice=['SAR50','SAR100','SAR300','SAR500',];
  int selectedIndex1 = -1;
bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Pallete.primaryColor,
        title:  StyledText(text: 'withdrawal_successful'.tr,color:  Pallete.white,),
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
          children: [
          SizedBox(height: 3.h,),
         StyledText(text: 'Select the Amount to Deposit'.tr,fontWeight: FontWeight.w500,fontSize: 16,),
        SizedBox(height: 1.h,),
            SizedBox(height: 5.5.h,
              child: ListView.builder(
                itemCount: staticprice.length, // Replace
                scrollDirection: Axis.horizontal,// itemCount with the actual number of items
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex1 == index;
                  return GestureDetector(
                    onTap: () {
                      // Update the selected index when tapped
                      setState(() {
                        selectedIndex1 = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 20.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Pallete.textFieldtextColor),
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected ? Pallete.primaryColor : Colors.transparent, // Change color based on selection
                        ),
                        child: StyledText(text: staticprice[index],fontSize: 18,color: isSelected ? Pallete.white : Colors.black,),
                      ),
                    ),
                  );
                },
              ),
            ),
        SizedBox(height: 2.h,),
        Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: CupertinoSwitch(
                activeColor: Pallete.primaryColor,
                value: isSwitchOn,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchOn = newValue;
                  });
                },
              ),
            ),
             StyledText(text: 'Add Amount Manually'.tr)
          ],
        ),
        SizedBox(height: 4.h,),
        Visibility(
          visible: isSwitchOn,
        child: const CustomTextField(hintText: 'price',),
        ),
            SizedBox(height: 10.h,),
            Container(
                child: Column(
                  children: [
                    const StyledText(text: '﷼  00,00'),
                    Container(width: 20.w,height: .2,color: Pallete.textColor,)
                  ],
                )
            ),
            SizedBox(height:isSwitchOn ? 38.h:42.h,),
            const Divider(thickness: 3,),
            //const Spacer(),
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
                        context.push('/WalletSelectpaymentmethod');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
        
                            color: const Color(0xff52aa9d),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: StyledText(text: 'Follow Up'.tr,color: Pallete.white,),
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
      ),
    );
  }
}
