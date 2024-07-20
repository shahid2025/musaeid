
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class SelectServices extends StatefulWidget {
  const SelectServices({super.key});

  @override
  State<SelectServices> createState() => _SelectServicesState();
}

class _SelectServicesState extends State<SelectServices> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      context.push('/ProviderDashboard');
    });
  }

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
        // title: StyledText(
        //   text: 'personal_information1'.tr,
        //   fontSize: 20,
        //   fontWeight: FontWeight.w900,
        // ),
        // centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(height: 20.h,),
Center(child: Image.asset(CustomAssets.selectServices,height: 20.h,)),
            SizedBox(height: 5.h,),
            StyledText(text: 'request_received'.tr,fontSize: 24,),
            StyledText(text: 'request_submitted'.tr,fontSize: 16,fontWeight: FontWeight.w400,align: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}

