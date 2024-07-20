
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        title:SizedBox(
          width: 30.w,
          child: Row(
            children: [
             // SizedBox(width: 4.w,),
              Row(
                children: [
                  const Icon(Icons.arrow_back_ios,color: Pallete.white,size: 20,),
                  StyledText(
                    text: 'orders1'.tr,
                    fontSize: 20,color: Pallete.white,
                    fontWeight: FontWeight.w900,
                  ),

                ],
              ),

            ],
          ),
        ),
        actions: [
        SizedBox(
        width: 20.w,
        child: StyledText(
          text: 'orders1'.tr,
          fontSize: 20,color: Pallete.white,
          fontWeight: FontWeight.w900,
        ),
      ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          
          
              const SizedBox(height: 16),
              StyledText(text:
                'about_customer'.tr,

                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(CustomAssets.plumber),
                          radius: 30,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StyledText(text:
                              'Rose Customer',

                                fontSize: 16,
                                fontWeight: FontWeight.bold,

                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.email, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                StyledText(text:
                                  'example@gmail.com',

                                    fontSize: 14,
                                    color: Colors.grey,

                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                StyledText(text:
                                  '1901 Thornridge Cirav...',

                                    fontSize: 14,
                                    color: Colors.grey,

                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40.w,
                          height: 4.5.h,
                          decoration: BoxDecoration(
                            color: Pallete.primaryColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StyledText(text: 'contact'.tr,color: Pallete.white,),
                              const Icon(Icons.phone_in_talk,color: Pallete.white,size: 18,),
          
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 4.5.h,
                          decoration: BoxDecoration(
                            color: Pallete.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StyledText(text: 'chat'.tr,color: Pallete.black,),
                             Image.asset(CustomAssets.chat,color: Pallete.black,height: 2.4.h,),
          
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               SizedBox(height: 3.h),
              _buildSectionTitle('payment_details'.tr),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    _buildPaymentDetailRow('identifier'.tr, '#123', Pallete.primaryColor),
                    _buildPaymentDetailRow('payment_method'.tr, 'Cash', Colors.black),
                    _buildPaymentDetailRow('status'.tr, 'pending'.tr, Colors.green),
                    _buildPaymentDetailRow('total_amount'.tr, '₹459', Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              _buildSectionTitle('price_details'.tr),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    _buildPriceDetailRow('price'.tr, '₹45.00', Colors.black),
                    const Divider(),
                    _buildPriceDetailRow('quantity'.tr, '*2', Colors.black),
                    const Divider(),
                    _buildPriceDetailRow('discount'.tr, '- ₹23.66', Colors.green),
                    const Divider(),
                    _buildPriceDetailRow('coupon'.tr, '₹459', Colors.black),
                    const Divider(),
                    _buildPriceDetailRow('total_amount'.tr, '₹459', Colors.black),
                    const Divider(),
                    _buildPriceDetailRow('payable_amount'.tr, '₹1255', Pallete.primaryColor),
                  ],
                ),
              )
          
          
          
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: StyledText(text:
        title,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
      ),
    );
  }

  Widget _buildPaymentDetailRow(String label, String value, Color valueColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StyledText(text:
            label,
            fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.grey[800],
          ),
          StyledText(text:
            value,

              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: valueColor,

          ),
        ],
      ),
    );
  }

  Widget _buildPriceDetailRow(String label, String value, Color valueColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StyledText(text:
            label,
              fontSize: 16,
              color: Colors.grey[800],
fontWeight: FontWeight.w400,
          ),
          StyledText(text:
            value,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: valueColor,
          ),
        ],
      ),
    );
  }
}
