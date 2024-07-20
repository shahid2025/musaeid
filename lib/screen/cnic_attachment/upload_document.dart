
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class UploadDoucment extends StatefulWidget {
  const UploadDoucment({super.key});

  @override
  State<UploadDoucment> createState() => _UploadDoucmentState();
}

class _UploadDoucmentState extends State<UploadDoucment> {

  @override
  Widget build(BuildContext context) {

    final isArabic = Get.locale?.languageCode == 'ar';
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: StyledText(
          text: 'temporary_pin'.tr,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(height: 10.h,),
            StyledText(text: 'enter_pin'.tr,fontSize: 24,),
            StyledText(text: 'pin_sent_to'.tr,fontSize: 16,fontWeight: FontWeight.w400,),
            SizedBox(height: 7.h,),
            Directionality(
              textDirection: TextDirection.ltr,
              child: OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  hasCustomInputDecoration: true,
                  numberOfFields: 6,
                  fieldWidth: 49,
                  fieldHeight: 60,
                  decoration: InputDecoration(
                    counterText: '',
                    fillColor: Colors.black.withOpacity(0.03),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Pallete.textFieldColor)),
                  ),
                  onSubmit: (code) {
                    //otpEnteredByUser = code;
                  }),
            ),
            SizedBox(height: 5.h,),
            const StyledText(text: '5:00',fontSize: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                StyledText(text: 'resend_code'.tr,fontSize: 13,fontWeight: FontWeight.w400,),
                const StyledText(text: '0548567901   ',fontSize: 13,fontWeight: FontWeight.w400,),
              ],
            ),
            SizedBox(height: 10.h,),
            CustomButton(label: 'submit'.tr, onPressed: (){
              context.push('/SelectServices');
            },width: 70.w,)

          ],
        ),
      ),
    );
  }
}
