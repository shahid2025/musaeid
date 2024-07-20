import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/common/custom_button.dart';
import 'package:musaeid/common/custom_text_field.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';

class PersonalDataPage extends StatefulWidget {
  const PersonalDataPage({super.key});

  @override
  State<PersonalDataPage> createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: StyledText(
          text: 'personal_information'.tr,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'first_name'.tr,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'middle_name'.tr,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'last_name'.tr,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'id_number'.tr,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'id_issue_date'.tr,
                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'id_expiry_date'.tr,

                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'gender'.tr,

                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'city'.tr,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'nationality'.tr,

                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                // validator: (value) => Validators.validateEmailPhone(value!),
                // controller: emailOrPhoneController,
                hintText: 'profession'.tr,

                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomDropdownButton(
                      text: 'main_profession'.tr,
                      color: Pallete.primaryColor,
                      textColor: Pallete.white,
                      borderColor: Pallete.primaryColor,
                    ),
                    SizedBox(width: 10.w),
                    CustomDropdownButton(
                      text: 'other_profession'.tr,
                      color: Pallete.white,
                      textColor: Pallete.black,
                      borderColor: Pallete.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              CustomButton(
                label: 'continue'.tr,
                onPressed: () {
                  context.push('/ConfirmLocation');
                },
                width: 45.w,
                height: 6.h,
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDropdownButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;

  const CustomDropdownButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: borderColor),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: .2),
        child: DropdownButton<String>(
          value: text,
          icon: Icon(Icons.keyboard_arrow_down, color: textColor),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: textColor),
          underline: Container(),
          onChanged: (String? newValue) {},
          items: <String>[text].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 12),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
