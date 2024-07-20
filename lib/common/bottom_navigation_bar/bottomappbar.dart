// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
//
// class AppTabBar extends StatelessWidget {
//   const AppTabBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final isArabic = Get.locale?.languageCode == 'ar';
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1), // Shadow color
//             spreadRadius: 0.0, // Spread radius
//             blurRadius: 3, // Blur radius
//             offset: const Offset(0, -3), // Offset
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(5),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             GestureDetector(
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomeScreen()),);
//               },
//               child: Column(
//                 children: [
//                   Image.asset(
//                    CustomAssets.homeicon,
//                     height: 35,
//                     width: 35,
//                   ),
//                    Text(
//                     'Main'.tr,
//                     style: TextStyle(
//                         fontSize: isArabic?14:11,
//                         fontWeight: FontWeight.w500,
//                         color: Pallete.black),
//                   )
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Notifications()),);
//               },
//               child: Column(
//                 children: [
//                   Image.asset(
//                    CustomAssets.loveicon,
//                     height: 35,
//                     width: 35,
//                   ),
//                    Text(
//                     'Notifications_Tab'.tr,
//                     style:
//                     TextStyle(fontSize:  isArabic?14:11, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//             ),
//             Transform.translate(
//               offset: const Offset(
//                   0, -30.0), // Specify the amount of translation
//               child: Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   Transform.translate(
//                     offset: const Offset(0, -2.0),
//                     child: Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey
//                                 .withOpacity(0.1), // Shadow color
//                             spreadRadius: 0.0, // Spread radius
//                             blurRadius: 3, // Blur radius
//                             offset: const Offset(0, -5), // / Offset
//                           ),
//                         ],
//                         shape: BoxShape.circle, // Make it a circular shape
//                         color: Colors.white, // Set the color of the circle
//                       ),
//                       // child: Widget(),
//                     ),
//                   ),
//                   Container(
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle, // Make it a circular shape
//                       color: Pallete.primaryColor
//                          , // Set the color of the circle
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: Image.asset(
//                       CustomAssets.qrcodeicon,
//                         height: 25,
//                         width: 25,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//
//               // Widget whose position you want to change
//             ),
//             GestureDetector(
//               onTap: (){
//                 context.push('/OrderHistory');
//               },
//               child: Column(
//                 children: [
//                   Image.asset(
//                    CustomAssets.graphicon,
//                     height: 35,
//                     width: 35,
//                   ),
//                    Text(
//                     'Orders'.tr,
//                     style:
//                     TextStyle(fontSize:  isArabic?14:12, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProfileScreen()),);
//               },
//               child: Column(
//                 children: [
//                   Image.asset(
//                   CustomAssets.profileicon,
//                     height: 35,
//                     width: 35,
//                   ),
//                    Text(
//                     'Account'.tr,
//                     style:
//                     TextStyle(fontSize:  isArabic?14:12, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
