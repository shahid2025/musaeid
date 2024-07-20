


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:musaeid/screen/provider_dashboard/drawer_page/drawer_page.dart';
import 'package:sizer/sizer.dart';
class AllBookingListStatus extends StatefulWidget {
  const AllBookingListStatus({super.key});

  @override
  State<AllBookingListStatus> createState() => _AllBookingListStatusState();
}

class _AllBookingListStatusState extends State<AllBookingListStatus> {
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        leading: GestureDetector(
          onTap: () {
            globalKey.currentState?.openDrawer();

            // Navigator.pop(context);
          },
          child: const Icon(Icons.menu,color: Pallete.white,),
        ),
        actions: [
          SizedBox(width: 4.w,),
          StyledText(
            text: 'orders1'.tr,
            fontSize: 20,color: Pallete.white,
            fontWeight: FontWeight.w900,
          ),
          const SizedBox(width: 8),
        ],
        automaticallyImplyLeading: false,
      ),
      drawer: DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Pallete.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.keyboard_arrow_down),
                      StyledText(text: 'all'.tr),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              GestureDetector(
                onTap: (){
                  context.push('/OrderDetails');
                },
                child: SizedBox(
                    height: 42.h,
                    child: CustomCard(text: 'apartment_cleaning'.tr, startText: 'pending'.tr,color:Pallete.red1 ,)),
              ),
              SizedBox(height: 2.h,),
              GestureDetector(
                onTap: (){
                  context.push('/PaymentCompleted');
                },
                child: SizedBox(
                    height: 42.h,
                    child: CustomCard(text: 'House cleaning'.tr, startText: 'completed'.tr,color: Pallete.greentype,)),
              ),
              SizedBox(height: 2.h,),
              SizedBox(
                  height: 42.h,
                  child: CustomCard(text: 'Electronic appliance repair'.tr, startText: 'in_progress'.tr,color: Pallete.orange1,)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String text;
  final String startText;
  final Color? color;

  const CustomCard({super.key, required this.text,  this.color, required this.startText});
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Pallete.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color:color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: StyledText(text:
              startText,
                color: Colors.white,
                fontSize: 14,

              ),
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StyledText(text:text,
                  // 'cleaning_floors'.tr,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color:Pallete.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: StyledText(text:
                  '#123',
                    color: Colors.white,
                    fontSize: 14,

                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                StyledText(text:
                '₹120   ',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Pallete.primaryColor

                ),
                StyledText(text:
                '21% Off',
                  color: Colors.green,
                  fontSize: 14,

                ),
              ],
            ),

            SizedBox(height: 1.h),
            Row(
              children: [
                Icon(Icons.location_on_outlined,),
                SizedBox(width: 8),
                StyledText(text:
                '1901 Thornridge Cir. Shiloh, Hawaii 81063',

                  color: Colors.grey,
                  fontSize: 14,

                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Icon(Icons.calendar_today, ),
                SizedBox(width: 8),
                StyledText(text:
                '02 February, 2022 At ',

                  color: Colors.grey,
                  fontSize: 14,

                ),
                StyledText(text:
                '8:30 AM',

                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,

                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Icon(Icons.person, ),
                SizedBox(width: 8),
                StyledText(text:
                'Arlene McCoy',

                  color: Colors.grey,
                  fontSize: 14,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Divider(color: Colors.grey),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(label: 'Decrease'.tr, onPressed: (){},width: 40.w,color: Color(0xfff6f7f9),textColor: Pallete.black,),

                CustomButton(label: 'Accept'.tr, onPressed: (){},width: 40.w,),


              ],
            ),
          ],
        ),
      ),

    );
  }
}
