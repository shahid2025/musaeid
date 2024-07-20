
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class StartServicesScreen extends StatefulWidget {
  const StartServicesScreen({super.key});

  @override
  State<StartServicesScreen> createState() => _StartServicesScreenState();
}

class _StartServicesScreenState extends State<StartServicesScreen> {

  @override
  Widget build(BuildContext context) {

    final isArabic = Get.locale?.languageCode == 'ar';
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        title:SizedBox(
          width: 30.w,
          child: Row(
            children: [
              // SizedBox(width: 4.w,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios,color: Pallete.white,size: 20,),
                    StyledText(
                      text: 'pending1'.tr,
                      fontSize: 14,color: Pallete.white,
                      fontWeight: FontWeight.w500,
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
        actions: [
          SizedBox(
            width:isArabic? 25.w:35.w,
            child: StyledText(
              text: 'check_status'.tr,
              fontSize: 14,color: Pallete.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StyledText(text:
                'booking_id'.tr,

                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,

                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: const StyledText(text:
                  '#123',
                    color: Pallete.primaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText(text:
                    'cleaning_apartments'.tr,
                      color: Pallete.black,
                      fontSize: 14,
                    ),
                    Row(
                      children: [
                        StyledText(text:
                        '${'date'.tr} ',

                          color: Pallete.black,
                          fontSize: 14,

                        ),
                        const StyledText(text:
                        '26 Jan, 2022',

                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,

                        ),
                      ],
                    ),
                    Row(
                      children: [
                        StyledText(text:
                        '${'time'.tr} ',

                          color: Pallete.black,
                          fontSize: 14,

                        ),
                        const StyledText(text:
                        '04:00 PM',

                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,

                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(CustomAssets.plumber,height: 10.h,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const StyledText(text:
                   'about_worker',
                  fontSize: 20, fontWeight: FontWeight.bold
                  ),
                  const SizedBox(height: 8),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(CustomAssets.plumber),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StyledText(text:
                                    'Ahmed Zia',
                                fontSize: 18, fontWeight: FontWeight.bold
                                  ),
                                  StyledText(text:
                                  'cleaning_expert',
                                   color: Colors.grey
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),
                                      Icon(Icons.star, color: Colors.orange),
                                      Icon(Icons.star, color: Colors.orange),
                                      Icon(Icons.star, color: Colors.orange),
                                      Icon(Icons.star_half, color: Colors.orange),
                                      SizedBox(width: 8),
                                     // Text(data['rating']),
                                    ],
                                  ),
                                  SizedBox(height: 8),

                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 3.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.w,
                                height: 4.5.h,
                                decoration: BoxDecoration(
                                  color: Pallete.primaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledText(text: 'contact'.tr,color: Pallete.white,),
                                    SizedBox(width: 5.w,),
                                    const Icon(Icons.phone_in_talk,color: Pallete.white,size: 18,),

                                  ],
                                ),
                              ),
                              Container(
                                width: 35.w,
                                height: 4.5.h,
                                decoration: BoxDecoration(
                                  color: Pallete.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledText(text: 'chat'.tr,color: Pallete.black,),
                                    SizedBox(width: 5.w,),
                                    Image.asset(CustomAssets.chat,color: Pallete.black,height: 2.4.h,),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
                width: 85.w,
                decoration: BoxDecoration(
                    color: Pallete.primaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledText(text: 'capture_image'.tr,color: Pallete.white,),
                      Container(
                          decoration: const BoxDecoration(
                              color: Pallete.white,
                              shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.add)),


                    ],
                  ),
                )
            ),
            SizedBox(height: 2.h,),
            Container(
                width: 85.w,
                decoration: BoxDecoration(
                    color: const Color(0xff52aa9d),
                    borderRadius: BorderRadius.circular(8)
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledText( text: 'upload_image'.tr,color: Pallete.white,),
                      const Icon(Icons.camera_alt,color: Pallete.white,),


                    ],
                  ),
                )
            ),
            SizedBox(height: 2.h,),
            Text(
              'image_details'.tr,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(label:  'end'.tr, onPressed: (){
                  _showFullWidthBottomSheet(context);
                 // context.push('/UploadDoucment');
                },width: 40.w,color: Pallete.white,textColor: Pallete.black,fontSize: 14,),
                CustomButton(label:  'start'.tr, onPressed: (){
                  context.push('/SuccessfullyScreen');
                },width: 40.w,fontSize: 14,),
              ],
            )
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
      return Wrap(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.h,),
                Image.asset(CustomAssets.cancel, height: 15.h),
                StyledText(text: 'The reservation has been canceled'.tr),
                SizedBox(height: 5.h,),
              ],
            ),
          ),
        ],
      );
    },
  );
}


