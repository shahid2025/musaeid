

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:musaeid/screen/provider_dashboard/drawer_page/drawer_page.dart';
import 'package:sizer/sizer.dart';
class ProviderDashboard extends StatefulWidget {
  const ProviderDashboard({super.key});

  @override
  State<ProviderDashboard> createState() => _ProviderDashboardState();
}

class _ProviderDashboardState extends State<ProviderDashboard> {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'comprehensive_service'.tr,
      'value': '15',
      'image': CustomAssets.document
    },
    {
      'title': 'total_bookings'.tr,
      'value': '98',
      'image':  CustomAssets.ticket
    },
    {
      'title': 'total_earnings'.tr,
      'value': '45.3',
      'image': CustomAssets.discount
    },
    {
      'title': 'clients'.tr,
      'value': '30',
      'image':  CustomAssets.profile
    },

  ];

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
          text: 'home'.tr,
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
        child: Column(
          children: [
Row(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Image.asset(CustomAssets.commission,height: 6.h,),
    SizedBox(width: 7.w,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('commission_type'.tr),
        StyledText(text: 'my_commission'.tr,fontSize: 15,),
      ],
    )
  ],
),
             SizedBox(height: 5.h),
            SizedBox(
              height: 23.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 2.0,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return _buildInfoCard(data[index]);
                },
              ),
            ),
            SizedBox(height: 5.h),
            SizedBox(height: 2.h,),
            StyledText( text:'monthly_revenue'.tr,fontSize: 18, color: Pallete.primaryColor,
            ),
            SizedBox(height: 3.h),
            MonthlyEarningsChart()

          ],
        ),
      ),
    );
  }
  Widget _buildInfoCard(Map<String, dynamic> item) {

    final isArabic = Get.locale?.languageCode == 'ar';
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item['image'],height: 3.h,),
         SizedBox(width: 3.w,),
         Column(
           children: [
             StyledText( text:  item['value'],fontSize: 18, color: Pallete.primaryColor,
             ),

             StyledText(text:item['title'], fontSize: isArabic?12:10,fontWeight: FontWeight.w400,),
           ],
         )

          ],
        ),
      ),
    );
  }
}






class MonthlyEarningsChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: 15000,
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(getTooltipColor: (_) => Pallete.cardColor,

                  //  getTooltipColor: Colors.grey,
                ),
                touchCallback: (FlTouchEvent event, BarTouchResponse? response) {},
                handleBuiltInTouches: true,
              ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 10.w,
                    getTitlesWidget: (value, meta) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                           SizedBox(width: 4.w),
                          Text(
                            '${(value / 1000).toInt()}k',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        // Add space after the value

                          // Add more space after "K"
                        ],
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      const style = TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      );
                      Widget text;
                      switch (value.toInt()) {
                        case 0:
                          text = const Text('Jan', style: style);
                          break;
                        case 1:
                          text = const Text('Feb', style: style);
                          break;
                        case 2:
                          text = const Text('Mar', style: style);
                          break;
                        case 3:
                          text = const Text('Apr', style: style);
                          break;
                        case 4:
                          text = const Text('May', style: style);
                          break;
                        case 5:
                          text = const Text('Jun', style: style);
                          break;
                        case 6:
                          text = const Text('Jul', style: style);
                          break;
                        case 7:
                          text = const Text('Aug', style: style);
                          break;
                        default:
                          text = const Text('', style: style);
                          break;
                      }
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        space: 5, // space between bar and title
                        child: text,
                      );
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(toY: 5000, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(toY: 11000, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 3,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 4,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 5,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 6,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
                BarChartGroupData(
                  x: 7,
                  barRods: [
                    BarChartRodData(toY: 0, color: Colors.purple),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

