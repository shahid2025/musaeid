import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:musaeid/main.dart';
import 'package:sizer/sizer.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  LanguageSelectionScreenState createState() => LanguageSelectionScreenState();
}

class LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  List<Country> countries = [
    Country(
      asset: CustomAssets.usflag, // Example path to the flag icon for the United States
      name: 'English',
    ),
    Country(
      asset: CustomAssets.saudiflag, // Example path to the flag icon for the United Arab Emirates
      name: 'Arabic',
    ),
    // Add more countries as needed
  ];
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:
          false, // Set to false to hide the default back button
          title: const Text(
            'selectLanguage',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          centerTitle: true, // Center the title
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer(),
          Center(child: Image.asset(CustomAssets.languageSelection,height: 30.h,)),
          Center(child: StyledText(text: 'اختر لغتك',fontSize: 20.sp,fontWeight: FontWeight.w800,)),
          Center(child: StyledText(text: 'اختر لغتك المفضلة من الأسفل',fontSize: 18.sp,fontWeight: FontWeight.w400,)),
      SizedBox(height: 5.h,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           GestureDetector(
             onTap:(){
               setLocale(const Locale('ar', 'AR'));
              // Get.updateLocale(const Locale('ar', 'AR'));
             },
             child: Container(
               height: 14.h,
               width: 25.w,
               decoration: BoxDecoration(
                 border: Border.all(color: Pallete.black),
                 borderRadius: BorderRadius.circular(8)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Image.asset(CustomAssets.saudiflag,fit: BoxFit.cover,height: 9.h,)),
                     const StyledText(text: 'عربي')
                   ],
                 ),
               ),
             ),
           ),
           SizedBox(width: 5.w,),
           GestureDetector(
             onTap: (){
               setLocale(const Locale('en', 'US')); // Set language to English
               // Navigator.pop(context);
               // Get.updateLocale(const Locale('en', 'US'));
             },
             child: Container(
               height: 14.h,
               width: 25.w,
               decoration: BoxDecoration(
                 border: Border.all(color: Pallete.black),
                 borderRadius: BorderRadius.circular(8)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Image.asset(CustomAssets.usflag,fit: BoxFit.cover,height: 9.h,)),
                     const StyledText(text: 'English')
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
          // Card(
          //   child:Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       DropdownButton<String>(
          //         icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
          //         underline: const SizedBox(), // Remove the underline
          //         value: dropdownValue, // Use the state variable here
          //         onChanged: (String? newValue) {
          //           setState(() {
          //             dropdownValue = newValue!;
          //             // Check selected country and update locale accordingly
          //             if (dropdownValue == 'English') {
          //               Get.updateLocale(Locale('en', 'US'));
          //             } else if (dropdownValue == 'Arabic') {
          //               Get.updateLocale(Locale('ar', 'AR'));
          //             }
          //           });
          //         },
          //         items: countries
          //             .map<DropdownMenuItem<String>>((Country country) {
          //           return DropdownMenuItem<String>(
          //      //        onTap: (){
          //      //        Get.updateLocale(Locale('ar', 'AR'));
          //      // Navigator.pop(context);
          //      //      },
          //             value: country.name,
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8.0),
          //               child: Row(
          //                 children: [
          //                  Image.asset(country.asset, width: 24, height: 24), // Add your image here
          //                   SizedBox(width: 8), // Adjust spacing between image and text
          //                   Text(country.name, style: TextStyle(fontSize: 15)),
          //                 ],
          //               ),
          //             ),
          //           );
          //         }).toList(),
          //       ),
          //       const Padding(
          //         padding: EdgeInsets.only(right: 8.0),
          //         child: Icon(Icons.arrow_drop_down),
          //       ), // Add your icon here
          //     ],
          //   )
          //
          // ),

    const Spacer(),
              GestureDetector(
                onTap: (){
                  context.push('/PersonalDataPage');
                },
                child: Center(
                  child: Container(
                    height: 5.h,width: 12.w,
                    decoration: BoxDecoration(
                      color: Pallete.primaryColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Icon(Icons.arrow_forward_ios,color: Pallete.white,),
                  ),
                ),
              )

            ],
          ),
        ));
  }
}
class Country {
  final String name; // Name of the country
  final String asset; // Path to the flag icon asset

  Country({
    required this.name,
    required this.asset,
  });
}
