
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class CnicAttachment extends StatefulWidget {
  const CnicAttachment({super.key});

  @override
  State<CnicAttachment> createState() => _CnicAttachmentState();
}

class _CnicAttachmentState extends State<CnicAttachment> {

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
          text: 'personal_information1'.tr,
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
Center(
  child: Container(
    decoration: BoxDecoration(
      color: Pallete.cardColor,
      borderRadius: BorderRadius.circular(8)
    ),
    child:  Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('identity_image'.tr,style: TextStyle(fontSize: isArabic?20:14),),
    ),
  ),
),
            SizedBox(height: 2.h,),
            Container(
              decoration: BoxDecoration(
                color: Pallete.cardColor,
                borderRadius: BorderRadius.circular(10)
              ),
                height: 28.h,
                width: 85.w,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: LineImageWidget(),
                )),
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
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StyledText( text: 'upload_image'.tr,color: Pallete.white,),
                   Icon(Icons.camera_alt,color: Pallete.white,),


                  ],
                ),
              )
            ),
            SizedBox(height: 2.h,),
             Text(
              'image_details'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 5.h,),
            CustomButton(label:  'continue'.tr, onPressed: (){
              context.push('/UploadDoucment');
            },width: 60.w,)
          ],
        ),
      ),
    );
  }
}
class LineImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200.0, // Adjust the width according to your image
          height: 400.0, // Adjust the height according to your image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(CustomAssets.saudiflag), // Path to your image
              fit: BoxFit.cover,
            ),
            border: Border(
              left: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
              right: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: CornerWidget(position: CornerPosition.topLeft),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CornerWidget(position: CornerPosition.topRight),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: CornerWidget(position: CornerPosition.bottomLeft),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CornerWidget(position: CornerPosition.bottomRight),
        ),
      ],
    );
  }
}

enum CornerPosition { topLeft, topRight, bottomLeft, bottomRight }

class CornerWidget extends StatelessWidget {
  final CornerPosition position;

  const CornerWidget({required this.position});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(30, 30),
      painter: CornerPainter(position),
    );
  }
}

class CornerPainter extends CustomPainter {
  final CornerPosition position;

  CornerPainter(this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    switch (position) {
      case CornerPosition.topLeft:
        path
          ..moveTo(0, size.height * 0.6)
          ..lineTo(0, 0)
          ..lineTo(size.width * 0.6, 0);
        break;
      case CornerPosition.topRight:
        path
          ..moveTo(size.width * 0.4, 0)
          ..lineTo(size.width, 0)
          ..lineTo(size.width, size.height * 0.6);
        break;
      case CornerPosition.bottomLeft:
        path
          ..moveTo(0, size.height * 0.4)
          ..lineTo(0, size.height)
          ..lineTo(size.width * 0.6, size.height);
        break;
      case CornerPosition.bottomRight:
        path
          ..moveTo(size.width * 0.4, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, size.height * 0.4);
        break;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}