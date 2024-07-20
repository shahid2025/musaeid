import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';

class PaymentCompleted extends StatefulWidget {
  const PaymentCompleted({super.key});

  @override
  State<PaymentCompleted> createState() => _PaymentCompletedState();
}

class _PaymentCompletedState extends State<PaymentCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        leading: GestureDetector(
          onTap: () {
            // globalKey.currentState?.openDrawer();

            // Navigator.pop(context);
          },
          child: const Icon(
            Icons.menu,
            color: Pallete.white,
          ),
        ),
        actions: [
          SizedBox(
            width: 4.w,
          ),
          StyledText(
            text: 'Completed Orders'.tr,
            fontSize: 20,
            color: Pallete.white,
            fontWeight: FontWeight.w900,
          ),
          const SizedBox(width: 8),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InfoCard(),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.2)),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5.h,
            color: const Color(0xfff0f0fa),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(
                    text: 'Alexis Lockman',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  StyledText(
                    text: '#123',
                    fontSize: 18.0,
                    color: Pallete.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledText(
                      text: 'ID',
                      color: Colors.grey,
                    ),
                    StyledText(
                      text: '#12',
                      fontSize: 16.0,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledText(
                      text: 'Status',
                      color: Colors.grey,
                    ),
                    StyledText(
                      text: 'Pending',
                      fontSize: 16.0,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledText(
                      text: 'Method',
                      color: Colors.grey,
                    ),
                    StyledText(
                      text: 'Cash',
                      fontSize: 16.0,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledText(
                      text: 'Amount Paid',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    StyledText(
                        text: '₹1500',
                        fontSize: 14.0,
                        color: Pallete.primaryColor),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
